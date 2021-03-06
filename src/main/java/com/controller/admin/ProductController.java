package com.controller.admin;

import com.dao.IDao;
import com.entity.Category;
import com.entity.Products;
import com.implement.CategoryImp;
import com.implement.ProductImp;
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

    @RequestMapping(value = {"", "/page/{page}"})
    public String course(@RequestParam(name = "page", required = false) Integer page, Model model){
    	System.out.println("vao product");
        IDao productImp = new ProductImp();
        int itemOnPage = 8;
        int totalEmp = productImp.selectCount();
        int pages = (int) Math.ceil((double) totalEmp / itemOnPage);
        model.addAttribute("pages", pages);
        if (page == null) {
            page = 0;
        }
        List<Products> productList = productImp.pagination(page-1,itemOnPage);
        model.addAttribute("products",productList);
        return "/WEB-INF/views/admin/pages/product/list_all";
    }

    @RequestMapping("init-insert")
    public String init_insert(Model model){
        CategoryImp categoryImp = new CategoryImp();
        List<Category> categories = categoryImp.getAll();
        model.addAttribute("categories",categories);
        model.addAttribute("newProduct",new Products());
        return "/WEB-INF/views/admin/pages/product/create_new";
    }

    @RequestMapping("insert")
    public String insert(@Valid @ModelAttribute("newProduct") Products newProduct, BindingResult result,
                         @RequestParam("fileImg")MultipartFile file,Model model){
        String notification;
        CategoryImp categoryImp = new CategoryImp();
        if (result.hasErrors()){
            if (file == null){
                model.addAttribute("blankImg","Vui l??ng ch???n ???nh!!!");
            }

            model.addAttribute("newProduct", newProduct);
            model.addAttribute("category",categoryImp.getAll());
            return "/WEB-INF/views/admin/pages/product/create_new";
        }else {
            if (file != null) {
                try {
                    String filename = file.getOriginalFilename(); // T????n file
                    byte datafile[] = file.getBytes();

                    newProduct.setImage(filename); 
                    String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\product";

                    File newFile = new File(realPath + "\\" + filename);
                    if (!filename.isEmpty() && newFile.exists()){
                        model.addAttribute("notification","File ???nh n??y ???? t???n t???i");
                        return "/WEB-INF/views/admin/pages/product/create_new";
                    }

                    File fileDestination = new File(realPath + File.separator + filename );
                    Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW); // Ghi d?????? li???????u file

                } catch (IOException e) {
                    System.out.println("L???????i ????????????c file: " + e.getMessage());
                    e.printStackTrace();
                } // D?????? li???????u file
            }else {
                model.addAttribute("newCourse", newProduct);
                model.addAttribute("category",categoryImp.getAll());
                model.addAttribute("blankImg","Vui l??ng ch???n ???nh!!!");
                return "/WEB-INF/views/admin/pages/course/create_new";
            }
            IDao productImp = new ProductImp();
            boolean check_insert = productImp.create(newProduct);

            if (check_insert==true)
                notification = "Th??m m???i d??? li???u th??nh c??ng !!!";
            else
                notification = "Th??m m???i d??? li???u th???t b???i";
            model.addAttribute("notification",notification);
            model.addAttribute("newCourse", newProduct);
            model.addAttribute("category",categoryImp.getAll());
            return "/WEB-INF/views/admin/pages/product/create_new";
        }
    }

    @RequestMapping("init-update")
    public String init_update(@RequestParam("id")int id, Model model){
        IDao productImp = new ProductImp();
        CategoryImp categoryImp = new CategoryImp();
        model.addAttribute("old_product",productImp.findById(id));
        model.addAttribute("categories",categoryImp.getAll());
        model.addAttribute("teachers",productImp.getAll());
        return "/WEB-INF/views/admin/pages/product/update";
    }

    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String update(@Valid @ModelAttribute("old_product")Products newProduct,BindingResult result,
                        @RequestParam("fileImg")MultipartFile file,
                         Model model, RedirectAttributes redirectAttributes){
        String view,notification, filename = null;
        if (file.getOriginalFilename().length()==0) {
            ProductImp newProductImp = new ProductImp();
            model.addAttribute("old_product",newProduct);
            newProduct.setImage(newProductImp.findById(newProduct.getId()).getImage());
            filename = "";
        }else if(file!= null){
            try {
                filename = file.getOriginalFilename();
                byte datafile[] = file.getBytes();

                newProduct.setImage(filename); 
                String realPath = "C:\\SEMII\\project\\src\\main\\webapp\\public\\assets\\img\\product";

                File newFile = new File(realPath + "\\" + filename);
                if (!filename.isEmpty() && newFile.exists()) {
                    model.addAttribute("notification", "File ???nh n??y ???? t???n t???i");
                    CategoryImp categoryImp = new CategoryImp();
                    model.addAttribute("category",categoryImp.getAll());
                    return "/WEB-INF/views/admin/pages/product/update";
                }

                File fileDestination = new File(realPath + File.separator + filename);
                Files.write(fileDestination.toPath(), datafile, StandardOpenOption.CREATE_NEW); 

            } catch (IOException e) {
                System.out.println("L???i ?????c file: " + e.getMessage());
                e.printStackTrace();
            } // D?????? li???????u file
        }
        CategoryImp categoryImp = new CategoryImp();
        model.addAttribute("category",categoryImp.getAll());
        IDao productImp = new ProductImp();
        boolean check_update = productImp.update(newProduct);
        if (check_update == true) {
            notification = "C???p nh???t th??nh c??ng!!";
        } else {
            notification = "C???p nh???t th???t b???i !!!";
        }
        view = "/admin/product";
        redirectAttributes.addFlashAttribute("notification", notification);
        return "redirect:"+view;
    }

    @RequestMapping(value = "delete")
    public String delete(@RequestParam("id")int id, RedirectAttributes redirectAttributes){
    	IDao productImp = new ProductImp();
        boolean check = productImp.delete(id);
        if (check==true)
            redirectAttributes.addFlashAttribute("notification","X??a th??nh c??ng!");
        else
            redirectAttributes.addFlashAttribute("notification","X??a th???t b???i!");
        return "redirect:/admin/product";
    }

    @RequestMapping(value = "detail")
    public String detail(@RequestParam("id")int id, Model model){
        IDao productImp = new ProductImp();
        model.addAttribute("product_found",productImp.findById(id));
        return "/WEB-INF/views/admin/pages/product/detail";
    }

    @RequestMapping(value = "search")
    public String search(@RequestParam("key") String keyword, Model model){
        ProductImp productImp = new ProductImp();
        List<Products> products = productImp.searchByName(keyword);
        if (products!= null){
            model.addAttribute("notification","???? t??m th???y s???n ph???m c?? t??n l????: " + keyword);
        }else {
            model.addAttribute("notification","R???t ti???c!! Kh??ng th??? t??m th???y s???n ph???m c?? t??n l??: " + keyword);
        }
        model.addAttribute("products",products);
        return "/WEB-INF/views/admin/pages/product/list_all";
    }
}
