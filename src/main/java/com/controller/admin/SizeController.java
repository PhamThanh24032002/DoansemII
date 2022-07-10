package com.controller.admin;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.IDao;
import com.entity.Category;
import com.entity.Colors;
import com.entity.Sizes;
import com.implement.ColorImp;
import com.implement.SizeImp;

@Controller
@RequestMapping("admin/sizes")
public class SizeController {

	@RequestMapping("")
	public String index(Model model) {
		IDao sizeImp = new SizeImp();
		List<Sizes> lst_size = sizeImp.getAll();
		model.addAttribute("sizes", lst_size);
		model.addAttribute("newSize", new Sizes());
		return "/WEB-INF/views/admin/pages/sizes/list_all";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newSizes") Sizes newSize, BindingResult result, RedirectAttributes attributes) {
		String notification;
		if (result.hasErrors()) {
			attributes.addAttribute("newSizes", newSize);
			return "/WEB-INF/views/admin/pages/sizes/list_all";
		}
		IDao SizeImp = new SizeImp();
		boolean check_insert = SizeImp.create(newSize);

		if (check_insert == true)
			notification = "Thêm mới dữ liệu thành công !!!";
		else
			notification = "Thêm mới dữ liệu thất bại";
		attributes.addFlashAttribute("notification", notification);
		return "redirect:/admin/sizes";
	}

	@RequestMapping("init-update")
	public String init_update(@RequestParam("id") int id, Model model) {
		IDao sizeImp = new SizeImp();
		model.addAttribute("old_size", sizeImp.findById(id));
		return "/WEB-INF/views/admin/pages/sizes/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("old_size") Sizes newSize, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {
		String view, notification = "";
		if (result.hasErrors()) {
			System.out.println("Loi roi");
			model.addAttribute("old_size", newSize);
			view = "admin/sizes/init-update?id=" + newSize.getId();
		} else {
			IDao sizeImp = new SizeImp();
			boolean check_update = sizeImp.update(newSize);
			if (check_update == true) {
				notification = "Cập nhật thành công!!";
			} else {
				notification = "Cập nhật thất bại !!!";
			}
			view = "/admin/sizes";
		}
		redirectAttributes.addFlashAttribute("notification", notification);
		return "redirect:" + view;
	}

	@RequestMapping(value = "delete")
	public String delete(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
		IDao sizeImp = new SizeImp();
		boolean check = sizeImp.delete(id);
		if (check == true)
			redirectAttributes.addFlashAttribute("notification", "Xóa thành công!!");
		else
			redirectAttributes.addFlashAttribute("notification", "Xóa thất bại!!");
		return "redirect:/admin/sizes";
	}

	@RequestMapping(value = "search")
	public String search(@RequestParam("key") String keyword, Model model) {
		SizeImp sizeImp = new SizeImp();
		List<Sizes> sizes = sizeImp.searchByName(keyword);
		if (sizes.size() > 0) {
			model.addAttribute("notification", "Đã tìm thấy danh mục có tên là : " + keyword);
		} else {
			model.addAttribute("notification", "Rất tiếc!! Không tìm thấy danh mục có tên là: " + keyword);
		}
		model.addAttribute("sizes", sizes);
		return "/WEB-INF/views/admin/pages/sizes/list_all";
	}
}
