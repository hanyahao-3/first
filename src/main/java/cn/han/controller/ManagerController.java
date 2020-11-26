package cn.han.controller;

import cn.han.entity.Manager;
import cn.han.service.ManagerService;
import cn.han.utils.Consts;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/Manager")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    /**
     * 跳到管理员登陆界面
     */
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "/manager/mLogin";
    }

    /**
     * 执行管理员登陆
     */
    @ResponseBody
    @RequestMapping("/login")
    public Object login(Manager manager, HttpServletRequest request){
        JSONObject jsonObject = new JSONObject();
        Manager byEntity = managerService.getByEntity(manager);
        if(byEntity == null){
            jsonObject.put(Consts.RES,0);
            return jsonObject;
        }else {
            request.getSession().setAttribute(Consts.MANAGE,byEntity.getManager_name());
           // model.addAttribute("manager",byEntity.getManager_name());
            jsonObject.put(Consts.RES,1);
            return jsonObject;
        }
    }

    /**
     * 跳到后台首页
     */
    @RequestMapping("/mIndex")
    public String tomIndex(HttpServletRequest request){
        /*Object attribute = request.getSession().getAttribute(Consts.MANAGE);
        if (attribute==null){
            return "/manager/mLogin";
        }*/
        return "/manager/mIndex";
    }


}
