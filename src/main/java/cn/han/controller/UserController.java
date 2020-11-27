package cn.han.controller;

import cn.han.entity.Announcements;
import cn.han.entity.Orders;
import cn.han.entity.Stations;
import cn.han.entity.User;
import cn.han.mapper.OrdersMapper;
import cn.han.mapper.StationsMapper;
import cn.han.service.AnnouncementsService;
import cn.han.service.OrdersService;
import cn.han.service.StationsService;
import cn.han.service.UserService;
import cn.han.utils.Consts;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/login")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private StationsService stationsService;
    //@Autowired
    //private ManagerService managerService;
    @Autowired
    private AnnouncementsService announcementsService;

    /**
     * 跳转到登陆页面（用户）
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "/users/uLogin";
    }

    /**
     * 执行登陆（用户）
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping("/ulogin")
    public Object ulogin(User user, Model model,HttpServletRequest request) {
        User user1 = userService.getByEntity(user);
        JSONObject jsonObject = new JSONObject();
        if (user1 == null) {
            jsonObject.put(Consts.RES,0);
            return jsonObject;
        } else {
            request.getSession().setAttribute(Consts.USERNAME,user1.getUser_name());
            request.getSession().setAttribute(Consts.USERID,user1.getId());
            request.getSession().setAttribute("user",user1);
            request.getSession().setAttribute("user",user1);
            jsonObject.put(Consts.RES,1);
            return jsonObject;
        }
    }

    /*退出*/
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute(Consts.USERNAME);
        request.getSession().removeAttribute(Consts.USERID);
        return "/users/uLogin";
    }

    /**
     * 去注册页面
     */
        @RequestMapping("/toRegister")
    public String toRegister(){
        return "/users/register";
    }

    /**
     * 执行注册
     */
    @RequestMapping("/register")
    @ResponseBody
    public Object register(User u){
        JSONObject js = new JSONObject();
        User entityByUser_name = userService.getEntityByUser_name(u.getUser_name());
        if(entityByUser_name!=null){
            js.put(Consts.RES,0);
            return js;
        }
        int insert = userService.insert(u);
        if(insert==0){
            js.put(Consts.RES,0);
            System.out.println(js.get(Consts.RES));
            return js;
        }else{
            js.put(Consts.RES,1);
            return js;
        }
    }

    /**
     * 跳到首页
     */
    @RequestMapping("/uIndex")
    public String uIndex(){
        return "/uIndex";
    }



    /**
     * 跳到个人中心界面
     */
    @RequestMapping("/personal")
    public String personal(HttpServletRequest request,Model model){
        Object attribute = request.getSession().getAttribute(Consts.USERNAME);
        if (attribute == null){
            return "/users/uLogin";
        }

        /*拿到所有票*/
        List<Orders> entityByOf_user = ordersService.getEntityByOf_user((String) attribute);
        model.addAttribute("orders",entityByOf_user);
        User entityByUser_name = userService.getEntityByUser_name((String) attribute);
        request.getSession().setAttribute("user",entityByUser_name);
        HashMap<Orders, HashMap<Date, Date>> ordersHashMapHashMap = new HashMap<>();
        if (entityByOf_user != null){
            for (Orders orders:entityByOf_user){
                String train_number = orders.getTrain_number();
                String from_place = orders.getFrom_place();
                String to_place = orders.getTo_place();
                if (from_place != null && to_place != null) {

                    Stations stations = stationsService.queryByTnu_Sta(train_number, from_place);
                    Date out_time = stations.getOut_time();
                    Stations stations1 = stationsService.queryByTnu_Sta(train_number, to_place);
                    Date in_time = stations1.getIn_time();
                    HashMap<Date, Date> dateDateHashMap = new HashMap<>();
                    dateDateHashMap.put(out_time, in_time);
                    ordersHashMapHashMap.put(orders, dateDateHashMap);
                }
            }
        }
        model.addAttribute("ordersWithTime",ordersHashMapHashMap);
        return "/personal/orders";
    }


}
