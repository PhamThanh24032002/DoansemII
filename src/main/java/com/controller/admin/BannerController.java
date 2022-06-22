package com.controller.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.IDao;
import com.entity.Banner;
import com.entity.Products;

import com.implement.BannerImp;
import com.implement.CategoryImp;
import com.implement.ProductImp;

@Controller
@RequestMapping("admin/banner")
public class BannerController {
	@RequestMapping(value = { "", "/page/{page}" })
	public String banner(@PathVariable(name = "page", required = false) Integer page, Model model) {
		IDao bannerImp = new BannerImp();
		int itemOnPage = 8;
		int totalEmp = bannerImp.selectCount();
		System.out.println(totalEmp);
		int pages = (int) Math.ceil((double) totalEmp / itemOnPage);
		model.addAttribute("pages", pages);
		if (page == null) {
			page = 0;
		}
		List<Banner> bannerList = bannerImp.pagination(page - 1, itemOnPage); // empDAO.select();
		int current_page = page;

		model.addAttribute("current_page", current_page);
		model.addAttribute("banner", bannerList);
		return "/WEB-INF/views/admin/pages/banner/list_all";
	}

	@RequestMapping("init-insert")
	public String init_insert(Model model) {
		model.addAttribute("newbanner", new Banner());
		return "/WEB-INF/views/admin/pages/banner/create_new";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newBanner") Banner newBanner, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model,RedirectAttributes attributes) {
		String notification;

		if (result.hasErrors()) {
			if (file == null) {
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
			}
			model.addAttribute("newbanner", newBanner);
			return "/WEB-INF/views/admin/pages/banner/create_new";
		} else {
			if (file != null) {
				try {
					String filename = file.getOriginalFilename(); 
					byte datafile[] = file.getBytes();

					newBanner.setImage(filename);
					String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\banner";

					File newFile = new File(realPath + "\\" + filename);

					File fileDestination = new File(realPath + File.separator + filename);
					Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW);

				} catch (IOException e) {
					System.out.println(" file: " + e.getMessage());
					e.printStackTrace();
				}
			} else {
				model.addAttribute("newBanner", newBanner);
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
				return "/WEB-INF/views/admin/pages/banner/create_new";
			}
			IDao bannerImp = new BannerImp();
			boolean check_insert = bannerImp.create(newBanner);

			if (check_insert == true)
				notification = "Thêm mới dữ liệu thành công !!!";
			else
				notification = "Thêm mới dữ liệu thất bại";
			attributes.addFlashAttribute("notification", notification);
			return "redirect:/admin/banner";
		}
	}

	@RequestMapping("init-update")
	public String init_update(@RequestParam("id") int id, Model model) {
		IDao bannerImp = new BannerImp();
		model.addAttribute("old_banner", bannerImp.findById(id));
		return "/WEB-INF/views/admin/pages/banner/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("old_banner") Banner newBanner, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model, RedirectAttributes redirectAttributes) {
		String view, notification, filename = null;
		if (file.getOriginalFilename().length() == 0) {
			BannerImp newBannerImp = new BannerImp();
			model.addAttribute("old_banner", newBanner);
			newBanner.setImage(newBannerImp.findById(newBanner.getId()).getImage());
			filename = "";
		} else if (file != null) {
			try {
				filename = file.getOriginalFilename();
				byte datafile[] = file.getBytes();

				newBanner.setImage(filename);
				String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\banner";

				File newFile = new File(realPath + "\\" + filename);
				if (!filename.isEmpty() && newFile.exists()) {
					model.addAttribute("notification", "File ảnh này đã tồn tại");
					return "/WEB-INF/views/admin/pages/banner/update";
				}
				File fileDestination = new File(realPath + File.separator + filename);
				Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW);

			} catch (IOException e) {
				System.out.println("Lỗi đọc file: " + e.getMessage());
				e.printStackTrace();
			} 
		}
		IDao  BannerImp = new BannerImp();
		boolean check_update = BannerImp.update(newBanner);
		if (check_update == true) {
			notification = "Cập nhật thành công!!";
		} else {
			notification = "Cập nhật thất bại !!!";
		}
		view = "/admin/banner";
		redirectAttributes.addFlashAttribute("notification", notification);
		return "redirect:" + view;
	}
	@RequestMapping(value = "delete")
    public String delete(@RequestParam("id")int id, RedirectAttributes redirectAttributes){
    	IDao bannerImp = new BannerImp();
        boolean check = bannerImp.delete(id);
        if (check==true)
            redirectAttributes.addFlashAttribute("notification","Xóa thành công!");
        else
            redirectAttributes.addFlashAttribute("notification","Xóa thất bại!");
        return "redirect:/admin/banner";
        
    }
}
