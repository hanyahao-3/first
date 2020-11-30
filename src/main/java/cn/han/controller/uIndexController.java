package cn.han.controller;

import cn.han.entity.Announcements;
import cn.han.entity.Scenic;
import cn.han.service.AnnouncementsService;
import cn.han.service.ScenicService;
import cn.han.service.impl.AnnouncementsServiceImpl;
import cn.han.utils.Consts;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class uIndexController {

    @Autowired
    private AnnouncementsService announcementsService;
    @Autowired
    private ScenicService scenicService;

    @RequestMapping("/uIndex")
    public String uIndex(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn){
        PageHelper.startPage(pn,4);
        List<Announcements> all = announcementsService.getAll();
        PageInfo<Announcements> p = new PageInfo<>(all,5);
        model.addAttribute("announcements",all);
        model.addAttribute("pager",p);
        return "/uIndex";
    }

    @RequestMapping("/uAnnouncement")
    private String uAnnouncement(Integer id,Model model){
        Announcements byId = announcementsService.getById(id);
        model.addAttribute("announcement",byId);
        return "/users/announcementDetail";
    }

    @RequestMapping("/queryTickets")
    public String queryTickets(){
        return "/tickets/ticketsIndex";
    }

    @RequestMapping("/queryHotel")
    public String queryHotel(){
        return "/hotel/hotelIndex";
    }

    /*跳到预订景点页面*/
    @RequestMapping("/queryTrategy")
    public String queryTrategy(Model model){
        List<Scenic> hotScenic = scenicService.getHotScenic();
        model.addAttribute("hotScenic",hotScenic);
        return "/trategy/trategyIndex";
    }

    @RequestMapping("/queryPersonal")
    public String queryPersonal(HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if (attribute == null){
            return "/users/uLogin";
        }
        return "/personal/personalIndex";
    }

    @RequestMapping("/ticketsDetail")
    public String ticketsDetail(HttpServletRequest request, @Param("train_number")String train_number){
        HashMap<String, ArrayList> ticketsDetails = (HashMap<String, ArrayList>) request.getSession().getAttribute("ticketsDetails");
        ArrayList arrayList = ticketsDetails.get(train_number);
        request.getSession().setAttribute("ticketsDetail",arrayList);
        request.getSession().setAttribute("train_number",train_number);
        return "/tickets/ticketsDetail";
    }
}
