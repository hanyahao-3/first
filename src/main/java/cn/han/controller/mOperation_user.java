package cn.han.controller;

import cn.han.entity.User;
import cn.han.service.UserService;
import cn.han.utils.Consts;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mOperation")
public class mOperation_user {

    @Autowired
    private UserService userService;

    /*删除用户*/
    @ResponseBody
    @RequestMapping("/deleteUser")
    public Object deleteUser(Integer id){
        int i = userService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        if(i == 1){
            jsonObject.put(Consts.RES,1);
            return jsonObject;
        }else {
            jsonObject.put(Consts.RES,0);
            return jsonObject;
        }
    }

    /*修改用户*/
    @ResponseBody
    @RequestMapping("/updateUser")
    public Object updateUser(User user, Model model){
        int i = userService.updateById(user);
        JSONObject jsonObject = new JSONObject();
        if (i == 1){
            jsonObject.put(Consts.RES,1);
//            model.addAttribute("results","success");
            return jsonObject;
        }else {
            jsonObject.put(Consts.RES,0);
//            model.addAttribute("results","failed");
            return jsonObject;
        }
    }
}
