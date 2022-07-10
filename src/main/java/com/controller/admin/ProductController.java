package com.controller.admin;

import com.dao.IDao;
import com.entity.Category;
import com.entity.Colors;
import com.entity.Product_detail;
import com.entity.Products;
import com.entity.Sizes;
import com.implement.CategoryImp;
import com.implement.ColorImp;
import com.implement.ProductDetailImp;
import com.implement.ProductImp;
import com.implement.SizeImp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("admin/product")
public class ProductController {

	@RequestMapping(value = { "", "/page/{page}" })
	public String course(@RequestParam(name = "page", required = false) Integer page, Model model) {
		System.out.println("vao product");
		IDao productImp = new ProductImp();
		int itemOnPage = 8;
		int totalEmp = productImp.selectCount();
		int pages = (int) Math.ceil((double) totalEmp / itemOnPage);
		model.addAttribute("pages", pages);
		if (page == null) {
			page = 0;
		}
		List<Products> productList = productImp.pagination(page - 1, itemOnPage);
		model.addAttribute("products", productList);
		return "/WEB-INF/views/admin/pages/product/list_all";
	}

	@RequestMapping("init-insert")
	public String init_insert(Model model) {
		CategoryImp categoryImp = new CategoryImp();
		SizeImp sizeImp = new SizeImp();
		ColorImp colorImp = new ColorImp();
		model.addAttribute("sizes", sizeImp.getAll());
		model.addAttribute("colors", colorImp.getAll());
		List<Category> categories = categoryImp.getAll();
		model.addAttribute("categories", categories);
		model.addAttribute("newProduct", new Products());
		return "/WEB-INF/views/admin/pages/product/create_new";
	}

	@RequestMapping("insert")
	public String insert(@Valid @ModelAttribute("newProduct") Products newProduct, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model, HttpServletRequest request) {
		String notification;
		CategoryImp categoryImp = new CategoryImp();
		if (result.hasErrors()) {
			SizeImp sizeImp = new SizeImp();
			ColorImp colorImp = new ColorImp();
			model.addAttribute("sizes", sizeImp.getAll());
			model.addAttribute("colors", colorImp.getAll());
			if (file == null) {
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
			}

			model.addAttribute("newProduct", newProduct);
			model.addAttribute("category", categoryImp.getAll());
			return "/WEB-INF/views/admin/pages/product/create_new";
		} else {
			if (file != null) {
				try {
					String filename = file.getOriginalFilename(); // Tên file
					byte datafile[] = file.getBytes();

					newProduct.setImage(filename);
					String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\product";

					File newFile = new File(realPath + "\\" + filename);
					if (!filename.isEmpty() && newFile.exists()) {
						model.addAttribute("notification", "File ảnh này đã tồn tại");
						return "/WEB-INF/views/admin/pages/product/create_new";
					}

					File fileDestination = new File(realPath + File.separator + filename);
					Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW); // Ghi dữ liệu file

				} catch (IOException e) {
					System.out.println("Lỗi đọc file: " + e.getMessage());
					e.printStackTrace();
				}
			} else {
				model.addAttribute("newCourse", newProduct);
				model.addAttribute("category", categoryImp.getAll());
				model.addAttribute("blankImg", "Vui lòng chọn ảnh!!!");
				return "/WEB-INF/views/admin/pages/course/create_new";
			}
			IDao productImp = new ProductImp();
			boolean check_insert = productImp.create(newProduct);
			for (int i = 1; i < 100; i++) {
				if (request.getParameter("color" + i) != null) {
					int color_id = Integer.parseInt(request.getParameter("color" + i));
					int size_id = Integer.parseInt(request.getParameter("size" + i));
					float price_dt = Float.parseFloat(request.getParameter("price" + i));
					float sale_price_dt = Float.parseFloat(request.getParameter("sale_price" + i));
					ColorImp colorImp = new ColorImp();
					SizeImp sizeImp = new SizeImp();
					Colors colorFound = colorImp.findById(color_id);
					Sizes sizeFound = sizeImp.findById(size_id);
					Product_detail newProduct_detail = new Product_detail(0, price_dt, sale_price_dt, newProduct,
							colorFound, null, sizeFound);
					ProductDetailImp detailImp = new ProductDetailImp();
					detailImp.create(newProduct_detail);
				}
			}
			if (check_insert == true)
				notification = "Thêm mới dữ liệu thành công !!!";
			else
				notification = "Thêm mới dữ liệu thất bại";
			model.addAttribute("notification", notification);
			model.addAttribute("newCourse", newProduct);
			model.addAttribute("category", categoryImp.getAll());
			return "/WEB-INF/views/admin/pages/product/create_new";
		}
	}

	@RequestMapping("init-update")
	public String init_update(@RequestParam("id") int id, Model model) {
		IDao productImp = new ProductImp();
		CategoryImp categoryImp = new CategoryImp();
		SizeImp sizeImp = new SizeImp();
		ColorImp colorImp = new ColorImp();
		ProductDetailImp detailImp = new ProductDetailImp();
		model.addAttribute("lstProductDetailSize", detailImp.findByProduct(id).size());
		model.addAttribute("lstProductDetail", detailImp.findByProduct(id));
		model.addAttribute("sizes", sizeImp.getAll());
		model.addAttribute("colors", colorImp.getAll());
		model.addAttribute("old_product", productImp.findById(id));
		model.addAttribute("categories", categoryImp.getAll());
		return "/WEB-INF/views/admin/pages/product/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("old_product") Products newProduct, BindingResult result,
			@RequestParam("fileImg") MultipartFile file, Model model, RedirectAttributes redirectAttributes, HttpServletRequest request, HttpSession session) {
		String view, notification, filename = null;
		SizeImp sizeImp = new SizeImp();
		ColorImp colorImp = new ColorImp();
		model.addAttribute("sizes", sizeImp.getAll());
		model.addAttribute("colors", colorImp.getAll());
		if (file.getOriginalFilename().length() == 0) {
			ProductImp newProductImp = new ProductImp();
			model.addAttribute("old_product", newProduct);
			newProduct.setImage(newProductImp.findById(newProduct.getId()).getImage());
			filename = "";
		} else if (file != null) {
			try {
				filename = file.getOriginalFilename();
				byte datafile[] = file.getBytes();

				newProduct.setImage(filename);
				String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\product";

				File newFile = new File(realPath + "\\" + filename);
				if (!filename.isEmpty() && newFile.exists()) {
					model.addAttribute("notification", "File ảnh này đã tồn tại");
					CategoryImp categoryImp = new CategoryImp();
					model.addAttribute("category", categoryImp.getAll());
					return "/WEB-INF/views/admin/pages/product/update";
				}

				File fileDestination = new File(realPath + File.separator + filename);
				Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW);

			} catch (IOException e) {
				System.out.println("Lỗi đọc file: " + e.getMessage());
				e.printStackTrace();
			} // Dá»¯ liá»‡u file
		}
		CategoryImp categoryImp = new CategoryImp();
		model.addAttribute("category", categoryImp.getAll());
		IDao productImp = new ProductImp();
		boolean check_update = productImp.update(newProduct);
		for (int i = 1; i < 100; i++) {
			if (request.getParameter("color" + i) != null) {
				int color_id = Integer.parseInt(request.getParameter("color" + i));
				int size_id = Integer.parseInt(request.getParameter("size" + i));
				float price_dt = Float.parseFloat(request.getParameter("price" + i));
				float sale_price_dt = Float.parseFloat(request.getParameter("sale_price" + i));
				Colors colorFound = colorImp.findById(color_id);
				Sizes sizeFound = sizeImp.findById(size_id);
				Product_detail newProduct_detail = new Product_detail(0, price_dt, sale_price_dt, newProduct,
						colorFound, null, sizeFound);
				ProductDetailImp detailImp = new ProductDetailImp();
				detailImp.create(newProduct_detail);
			}
		}
		if (check_update == true) {
			notification = "Cập nhật thành công!!";
		} else {
			notification = "Cập nhật thất bại !!!";
		}
		view = "/admin/product";
		redirectAttributes.addFlashAttribute("notification", notification);
		return "redirect:" + view;
	}

	@RequestMapping(value = "delete")
	public String delete(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
		IDao productImp = new ProductImp();
		ProductDetailImp detailImp = new ProductDetailImp();
		detailImp.findByProduct(id).forEach(x->{
			detailImp.delete(x.getId());
		});
		boolean check = productImp.delete(id);
		if (check == true)
			redirectAttributes.addFlashAttribute("notification", "Xóa thành công!");
		else
			redirectAttributes.addFlashAttribute("notification", "Xóa thất bại!");
		return "redirect:/admin/product";
	}

	@RequestMapping(value = "detail")
	public String detail(@RequestParam("id") int id, Model model) {
		IDao productImp = new ProductImp();
		model.addAttribute("product_found", productImp.findById(id));
		return "/WEB-INF/views/admin/pages/product/detail";
	}

	@RequestMapping(value = "search")
	public String search(@RequestParam("key") String keyword, Model model) {
		ProductImp productImp = new ProductImp();
		List<Products> products = productImp.searchByName(keyword);
		if (products != null) {
			model.addAttribute("notification", "Đã tìm thấy sản phẩm có tên là : " + keyword);
		} else {
			model.addAttribute("notification", "Rất tiếc!! Không thể tìm thấy sản phẩm có tên là: " + keyword);
		}
		model.addAttribute("products", products);
		return "/WEB-INF/views/admin/pages/product/list_all";
	}
}
