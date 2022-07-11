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
import com.implement.ColorImp;

@Controller
@RequestMapping("admin/colors")
public class ColorController {

	@RequestMapping("")
	public String index() {
		return "views/admin/pages/colors/list_all";
	}
	

    @RequestMapping("init-insert")
    public String init_insert(Model model){
        IDao colorImp = new ColorImp();
        model.addAttribute("newColor",new Colors());
        return "/WEB-INF/views/admin/pages/colors/create_new";
    }

    @RequestMapping("insert")
    public String insert(@Valid @ModelAttribute("newColor") Colors newColor, BindingResult result, Model model){
        String notification;
        if (result.hasErrors()){
            model.addAttribute("newCate", newColor);
            return "/WEB-INF/views/admin/pages/colors/create_new";
        }
        	IDao ColorImp = new ColorImp();
            boolean check_insert = ColorImp.create(newColor);

            if (check_insert==true)
                notification = "Thêm mới dữ liệu thành công !!!";
            else
                notification = "Thêm mới dữ liệu thất bại";
            model.addAttribute("notification",notification);
            return "/WEB-INF/views/admin/pages/colors/create_new";
    }

    @RequestMapping("init-update")
    public String init_update(@RequestParam("id")int id, Model model){
    	IDao colorImp = new ColorImp();
        model.addAttribute("old_color",colorImp.findById(id));
        return "/WEB-INF/views/admin/pages/colors/update";
    }

    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String update(@Valid @ModelAttribute("old_color")Colors newColor, BindingResult result, Model model, RedirectAttributes redirectAttributes){
        String view,notification = "";
        if (result.hasErrors()){
            model.addAttribute("old_color",newColor);
            view = "admin/colors/update?id="+newColor.getId();
        }else{
            IDao colorImp = new ColorImp();
            boolean check_update = colorImp.update(newColor);
            if (check_update == true){
                notification = "Cập nhật thành công!!";
            }else {
               notification = "Cập nhật thất bại !!!";
            }
            view = "/admin/colors";
        }
        redirectAttributes.addFlashAttribute("notification", notification);
        return "redirect:"+view;
    }

    @RequestMapping(value = "delete")
    public String delete(@RequestParam("id")int id, RedirectAttributes redirectAttributes){
        IDao colorImp = new ColorImp();
        boolean check = colorImp.delete(id);
        if (check==true)
            redirectAttributes.addFlashAttribute("notification","Xóa thành công!!");
        else
            redirectAttributes.addFlashAttribute("notification","Xóa thất bại!!");
        return "redirect:/admin/category";
    }

    @RequestMapping(value = "search")
    public String search(@RequestParam("key") String keyword, Model model){
        ColorImp colorImp = new ColorImp();
        List<Colors> colors = colorImp.searchByName(keyword);
        if (colors.size()>0){
            model.addAttribute("notification","Đã tìm thấy danh mục có tên là : " + keyword);
        }else {
            model.addAttribute("notification","Rất tiếc!! Không tìm thấy danh mục có tên là: " + keyword);
        }
        model.addAttribute("category",colors);
        return "/WEB-INF/views/admin/pages/category/list_all";
    }
}
