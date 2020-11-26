package cn.han.controller;

import cn.han.entity.Announcements;
import cn.han.entity.User;
import cn.han.service.AnnouncementsService;
import cn.han.service.UserService;
import cn.han.utils.Consts;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class managerIndex {

    @Autowired
    private UserService userService;
    @Autowired
    private AnnouncementsService announcementsService;

    /*切换账号*/
    @RequestMapping("/mLogin")
    public String mLogin(HttpServletRequest request){
        request.getSession().removeAttribute(Consts.MANAGE);
        return "/manager/mLogin";
    }

    /*个人信息*/
    @RequestMapping("/one_set")
    public String one_set(){
        return "/manager/one_set";
    }

    /*后台首页*/
    @RequestMapping("/welcome")
    public String welcome(){
        return "/manager/welcome";
    }

    /*用户列表*/
    @RequestMapping("/userList")
    public String userList(Model model,HttpServletRequest request){
        List<User> allUsers = userService.getAll();
        model.addAttribute("allUsers",allUsers);
        return "/manager/userOperation/user-list";
    }

    /*公告列表*/
    @RequestMapping("/announcementsList")
    public String announcementsList(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn){
        PageHelper.startPage(pn,4);
        List<Announcements> all = announcementsService.getAll();
        PageInfo<Announcements> p = new PageInfo<>(all,5);
        model.addAttribute("list",all);
        model.addAttribute("pager",p);
        return "/manager/AnnouncementsOperation/announcements-list";
    }

    /*增加公告*/
    @RequestMapping("/announcementsAdd")
    public String announcementsAdd(){
        return "/manager/AnnouncementsOperation/announcements-add";
    }

    /*修改公告*/
    @RequestMapping("/announcementsUpdate")
    public String announcementsUpdate(Integer id,Model model){
        Announcements announcements = announcementsService.getById(id);
        model.addAttribute("announcements",announcements);
        return "/manager/AnnouncementsOperation/announcements-update";
    }

    /*修改用户*/
    @RequestMapping("/userEdit")
    public String userEdit(@Param("usre_name")String user_name,Model model){
        model.addAttribute("user_name",user_name);
        return "/manager/userOperation/user-edit";
    }

    /*增加用户*/
    @RequestMapping("/userAdd")
    public String userAdd(){
        return "/manager/userOperation/user-add";
    }
}
