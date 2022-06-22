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
import com.entity.Products;
import com.entity.Slider;
import com.implement.CategoryImp;
import com.implement.ProductImp;
import com.implement.SliderImp;

@Controller
@RequestMapping("admin/slider")
public class SliderController {
	@RequestMapping(value = { "", "/page/{page}" })
	public String slider(@PathVariable(name = "page", required = false) Integer page, Model model) {
		System.out.println("vao slider");
		IDao sliderImp = new SliderImp();
		int itemOnPage = 8;
		int totalEmp = sliderImp.selectCount();
		System.out.println(totalEmp);
		int pages = (int) Math.ceil((double) totalEmp / itemOnPage);
		System.out.println(pages);
		model.addAttribute("pages", pages);
		if (page == null) {
			page = 0;
		}
		System.out.println(sliderImp.pagination(page - 1, itemOnPage));
		List<Slider> sliderList = sliderImp.pagination(page - 1, itemOnPage); // empDAO.select();
		int current_page = page;

		model.addAttribute("current_page", current_page);
		model.addAttribute("slider", sliderList);
		return "/WEB-INF/views/admin/pages/slider/list_all";
	}

	@RequestMapping("init-insert")
	public String init_insert(Model model) {
		IDao sliderImp = new SliderImp();
		model.addAttribute("newslider", new Slider());
		return "/WEB-INF/views/admin/pages/slider/create_new";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newSlider") Slider newSlider, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model) {
		String notification;

		if (result.hasErrors()) {
			if (file == null) {
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
			}
			model.addAttribute("newslider", newSlider);
			return "/WEB-INF/views/admin/pages/slider/create_new";
		} else {
			if (file != null) {
				try {
					String filename = file.getOriginalFilename(); // TÃªn file
					byte datafile[] = file.getBytes();

					newSlider.setImage(filename);
					String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\slider";

					File newFile = new File(realPath + "\\" + filename);
					if (!filename.isEmpty() && newFile.exists()) {
						model.addAttribute("notification", "File ảnh này đã tồn tại");
						return "/WEB-INF/views/admin/pages/slider/create_new";
					}

					File fileDestination = new File(realPath + File.separator + filename);
					Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW);

				} catch (IOException e) {
					System.out.println(" file: " + e.getMessage());
					e.printStackTrace();
				}
			} else {
				model.addAttribute("newslider", newSlider);
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
				return "/WEB-INF/views/admin/pages/slider/create_new";
			}
			IDao sliderImp = new SliderImp();
			boolean check_insert = sliderImp.create(newSlider);

			if (check_insert == true)
				notification = "Thêm mới dữ liệu thành công !!!";
			else
				notification = "Thêm mới dữ liệu thất bại";
			model.addAttribute("notification", notification);
			model.addAttribute("newSlider", newSlider);
			return "/WEB-INF/views/admin/pages/slider/create_new";
		}
	}

	@RequestMapping("init-update")
	public String init_update(@RequestParam("id") int id, Model model) {
		IDao sliderImp = new SliderImp();
		model.addAttribute("old_slider", sliderImp.findById(id));
		return "/WEB-INF/views/admin/pages/slider/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("old_slider") Slider newSlider, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model, RedirectAttributes redirectAttributes) {
		String view, notification, filename = null;
		if (file.getOriginalFilename().length() == 0) {
			SliderImp newSliderImp = new SliderImp();
			model.addAttribute("old_slider", newSlider);
			newSlider.setImage(newSliderImp.findById(newSlider.getId()).getImage());
			filename = "";
		} else if (file != null) {
			try {
				filename = file.getOriginalFilename();
				byte datafile[] = file.getBytes();

				newSlider.setImage(filename);
				String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\slider";

				File newFile = new File(realPath + "\\" + filename);
				if (!filename.isEmpty() && newFile.exists()) {
					model.addAttribute("notification", "File ảnh này đã tồn tại");
					return "/WEB-INF/views/admin/pages/slider/update";
				}
				File fileDestination = new File(realPath + File.separator + filename);
				Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW);

			} catch (IOException e) {
				System.out.println("Lỗi đọc file: " + e.getMessage());
				e.printStackTrace();
			} 
		}
		IDao  SliderImp = new SliderImp();
		boolean check_update = SliderImp.update(newSlider);
		if (check_update == true) {
			notification = "Cập nhật thành công!!";
		} else {
			notification = "Cập nhật thất bại !!!";
		}
		view = "/admin/slider";
		redirectAttributes.addFlashAttribute("notification", notification);
		return "redirect:" + view;
	}
	@RequestMapping(value = "delete")
    public String delete(@RequestParam("id")int id, RedirectAttributes redirectAttributes){
    	IDao sliderImp = new SliderImp();
        boolean check = sliderImp.delete(id);
        if (check==true)
            redirectAttributes.addFlashAttribute("notification","Xóa thành công!");
        else
            redirectAttributes.addFlashAttribute("notification","Xóa thất bại!");
        return "redirect:/admin/slider";
    }
}
