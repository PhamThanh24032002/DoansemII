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
import com.entity.Payment_method;
import com.entity.Sizes;
import com.implement.ColorImp;
import com.implement.PaymentImp;
import com.implement.SizeImp;

@Controller
@RequestMapping("admin/payments")
public class PaymentController {

	@RequestMapping("")
	public String index(Model model) {
		IDao paymentImp = new PaymentImp();
		List<Payment_method> lst_size = paymentImp.getAll();
		model.addAttribute("payments", lst_size);
		model.addAttribute("newPayment", new Payment_method());
		return "/WEB-INF/views/admin/pages/payments/list_all";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newPayment") Payment_method newPayment, BindingResult result, RedirectAttributes attributes) {
		String notification;
		if (result.hasErrors()) {
			attributes.addAttribute("newPayment", newPayment);
			return "/WEB-INF/views/admin/pages/payments/list_all";
		}
		IDao paymentImp = new PaymentImp();
		boolean check_insert = paymentImp.create(newPayment);

		if (check_insert == true)
			notification = "Thêm mới dữ liệu thành công !!!";
		else
			notification = "Thêm mới dữ liệu thất bại";
		attributes.addFlashAttribute("notification", notification);
		return "redirect:/admin/payments";
	}

	@RequestMapping("init-update")
	public String init_update(@RequestParam("id") int id, Model model) {
		IDao sizeImp = new PaymentImp();
		model.addAttribute("old_payment", sizeImp.findById(id));
		return "/WEB-INF/views/admin/pages/payments/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("old_payment") Payment_method old_payment, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {
		String view, notification = "";
		if (result.hasErrors()) {
			System.out.println("Loi roi");
			model.addAttribute("old_payment", old_payment);
			view = "admin/payments/init-update?id=" + old_payment.getId();
		} else {
			IDao sizeImp = new PaymentImp();
			boolean check_update = sizeImp.update(old_payment);
			if (check_update == true) {
				notification = "Cập nhật thành công!!";
			} else {
				notification = "Cập nhật thất bại !!!";
			}
			view = "/admin/payments";
		}
		redirectAttributes.addFlashAttribute("notification", notification);
		return "redirect:" + view;
	}

	@RequestMapping(value = "delete")
	public String delete(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
		IDao sizeImp = new PaymentImp();
		boolean check = sizeImp.delete(id);
		if (check == true)
			redirectAttributes.addFlashAttribute("notification", "Xóa thành công!!");
		else
			redirectAttributes.addFlashAttribute("notification", "Xóa thất bại!!");
		return "redirect:/admin/payments";
	}

	@RequestMapping(value = "search")
	public String search(@RequestParam("key") String keyword, Model model) {
		PaymentImp sizeImp = new PaymentImp();
		List<Payment_method> sizes = sizeImp.searchByName(keyword);
		if (sizes.size() > 0) {
			model.addAttribute("notification", "Đã tìm thấy danh mục có tên là : " + keyword);
		} else {
			model.addAttribute("notification", "Rất tiếc!! Không tìm thấy danh mục có tên là: " + keyword);
		}
		model.addAttribute("sizes", sizes);
		return "/WEB-INF/views/admin/pages/payments/list_all";
	}
}
