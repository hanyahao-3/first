package cn.han.controller;

import cn.han.entity.Scenic;
import cn.han.service.ScenicService;
import cn.han.utils.Consts;
import cn.han.utils.test1.SystemContext;
import cn.han.utils.test1.UUIDUtils;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/scenic")
public class mOperation_scenic {

    @Autowired
    private ScenicService scenicService;

    /*to修改景点*/
    @RequestMapping("/toUpdateScenic")
    public String toUpdateScenic(Model model,Integer id){
        Scenic byId = scenicService.getById(id);
        model.addAttribute("scenic",byId);
        return "/manager/ScenicOperation/scenic-update";
    }

    /*修改景点*/
    @RequestMapping("/updateScenic")
    public String updateScenic(Scenic scenic, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        System.out.println(scenic);

        scenicCommen(scenic,files,request);
        scenicService.updateByEntity(scenic);
        return "redirect:/scenic/toUpdateScenic.action";
    }

    /*to增加景点*/
    @RequestMapping("/toAddScenic")
    public String toAddScenic(){
        return "/manager/ScenicOperation/scenic-add";
    }

    /*执行增加景点*/
    @RequestMapping("/addScenic")
    public String addScenic(Scenic scenic, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        scenicCommen(scenic,files,request);
        scenic.setCollection_sum(0);
        scenicService.insertEntity(scenic);
        return "redirect:/scenic/toAddScenic.action";
    }

    /*删除景点*/
    @ResponseBody
    @RequestMapping("/deleteScenic")
    private Object deleteAnnouncement(Integer id) {
        int i = scenicService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put(Consts.RES, 1);
            return jsonObject;
        } else {
            jsonObject.put(Consts.RES, 0);
            return jsonObject;
        }
    }
    /**
     * 增加和修改时的共同方法
     * @param files
     * @param request
     * @throws IOException
     */
    private void scenicCommen(Scenic scenic, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        if (files.length > 0) {
            for (int s = 0; s < files.length; s++) {
                String n = UUIDUtils.create();
                String path =  request.getSession().getServletContext().getRealPath("/") + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename();
                File newFile = new File(path);
//              通过CommonsMultipartFile的方法直接写文件
                files[s].transferTo(newFile);
                if (files[s].getOriginalFilename().equals("")){
                    continue;
                }
                if (s == 0) {
                    scenic.setUrl1(request.getContextPath() + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename());
                }
                if (s == 1) {
                    scenic.setUrl2(request.getContextPath() + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename());
                }
                if (s == 2) {
                    scenic.setUrl3(request.getContextPath() + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename());
                }
                if (s == 3) {
                    scenic.setUrl4(request.getContextPath() + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename());
                }
                if (s == 4) {
                    scenic.setUrl5(request.getContextPath() + "//res//other//test1//ueditor//upload//" + n + files[s].getOriginalFilename());
                }
            }
        }
    }
}
