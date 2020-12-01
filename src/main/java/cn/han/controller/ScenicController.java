package cn.han.controller;

import cn.han.entity.Scenic;
import cn.han.entity.ScenicOrders;
import cn.han.service.ScenicOrdersService;
import cn.han.service.ScenicService;
import cn.han.utils.Consts;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/uSceninc")
public class ScenicController {

    @Autowired
    private ScenicService scenicService;
    @Autowired
    private ScenicOrdersService scenicOrdersService;

    /*跳到景点详细页面*/
    @RequestMapping("/toScenincDetail")
    public String toScenincDetail(Integer id, Model model){
        Scenic byId = scenicService.getById(id);
        model.addAttribute("sceniceDetail",byId);
        return "/trategy/scenicDetail";
    }

    /*跳到预订景点票界面*/
    @RequestMapping("/toScenicBuy")
    public String toScenicBuy(@RequestParam("id")Integer id, Model model){
        Scenic byId = scenicService.getById(id);
        model.addAttribute("t_scenic",byId);
        return "/trategy/scenicBuy";
    }

    /*执行预订景点票*/
    @ResponseBody
    @RequestMapping("/scenicBuy")
    public Object scenicBuy(HttpServletRequest request,@Param("id")Integer id,@Param("sum1")int sum1,@RequestParam("buy_time")String buy_time) throws ParseException {
        Object attribute = request.getSession().getAttribute(Consts.USERNAME);
        JSONObject js = new JSONObject();
        if (attribute == null) {
            js.put(Consts.RES,0);
            return js;
        }
        Object attribute1 = request.getSession().getAttribute(Consts.USERID);
        if (buy_time.equals("")){
            js.put(Consts.RES,3);
            return js;
        }
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(buy_time);
        ScenicOrders scenicOrders = new ScenicOrders();
        int s=0;
        for(int i=0;i<sum1;i++){
            scenicOrders.setUser_id((Integer) attribute1);
            scenicOrders.setScenic_id(id);
            scenicOrders.setBuy_time(date);
            int i1 = scenicOrdersService.insertEntity(scenicOrders);
            if (i1>0){
                s++;
            }
        }
        js.put(Consts.RES,1);
        return js;
    }
}
