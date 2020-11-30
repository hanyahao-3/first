package cn.han.controller;

import cn.han.entity.Scenic;
import cn.han.service.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/uSceninc")
public class ScenicController {

    @Autowired
    private ScenicService scenicService;

    /*跳到景点详细页面*/
    @RequestMapping("/toScenincDetail")
    public String toScenincDetail(Integer id, Model model){
        Scenic byId = scenicService.getById(id);
        model.addAttribute("sceniceDetail",byId);
        return "/trategy/scenicDetail";
    }
}
