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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.IDao;
import com.entity.Blog;
import com.entity.Products;
import com.implement.BlogImp;


@Controller
@RequestMapping("admin/Blog")
public class BlogAdminController {
	@RequestMapping("")
	public String Blog(@PathVariable(name = "page", required = false) Integer page, Model model) {

		IDao BlogImp = new BlogImp();
		int itemOnPage = 8;
		int totalEmp = BlogImp.selectCount();
		int pages = (int) Math.ceil((double) totalEmp / itemOnPage);
		model.addAttribute("pages", pages);
		if (page == null) {
			page = 0;
		}
		List<Blog> bloglist = BlogImp.pagination(page - 1, itemOnPage); // empDAO.select();
		int current_page = page;
		model.addAttribute("current_page", current_page);
		model.addAttribute("blog", bloglist);

		return "/WEB-INF/views/admin/pages/blog/list_all";
	}

	@RequestMapping("init-insert")
	public String init_insert(Model model) {
		IDao blogImp = new BlogImp();
		model.addAttribute("newBlog", new Blog());
		return "/WEB-INF/views/admin/pages/blog/create_new";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newBlog") Products newBlog, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model) {
		String notification;
		if (result.hasErrors()) {
			if (file == null) {
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
			}

			model.addAttribute("newBlog", newBlog);
			return "/WEB-INF/views/admin/pages/blog/create_new";
		} else {
			if (file != null) {
				try {
					String filename = file.getOriginalFilename(); // TÃªn file
					byte datafile[] = file.getBytes();

					newBlog.setImage(filename);
					String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\blog";

					File newFile = new File(realPath + "\\" + filename);
					if (!filename.isEmpty() && newFile.exists()) {
						model.addAttribute("notification", "File ảnh này đã tồn tại");
						return "/WEB-INF/views/admin/pages/blog/create_new";
					}

					File fileDestination = new File(realPath + File.separator + filename);
					Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW); 

				} catch (IOException e) {
					System.out.println(" file: " + e.getMessage());
					e.printStackTrace();
				} // file
			} else {
				model.addAttribute("newblog", newBlog);
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
				return "/WEB-INF/views/admin/pages/blog/create_new";
			}
			IDao BlogImp = new BlogImp();
			boolean check_insert = BlogImp.create(newBlog);

			if (check_insert == true)
				notification = "Thêm mới dữ liệu thành công !!!";
			else
				notification = "Thêm mới dữ liệu thất bại";
			model.addAttribute("notification", notification);
			model.addAttribute("newblog", newBlog);
			
			return "/WEB-INF/views/admin/pages/blog/create_new";
		}
	}
}
