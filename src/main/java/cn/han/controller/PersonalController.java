package cn.han.controller;

import cn.han.entity.Orders;
import cn.han.entity.ScenicOrders;
import cn.han.entity.Stations;
import cn.han.entity.User;
import cn.han.service.OrdersService;
import cn.han.service.ScenicOrdersService;
import cn.han.service.StationsService;
import cn.han.service.UserService;
import cn.han.utils.Consts;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/personal")
public class PersonalController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private UserService userService;
    @Autowired
    private StationsService stationsService;
    @Autowired
    private ScenicOrdersService scenicOrdersService;

    @RequestMapping("/personalCenter")
    public String personalCenter(){
        return "/personal/personalIndex";
    }

    @RequestMapping("/basicMessage")
    public String basicMessage(){
        return "/personal/personalBasic";
    }

    /*个人中西->景点预订查看*/
    @RequestMapping("/scenicOrdersMessage")
    public String scenicOrdersMessage(HttpServletRequest request,Model model){
        Object attribute = request.getSession().getAttribute(Consts.USERNAME);
        if (attribute == null){
            return "/users/uLogin";
        }
        /*拿到所有票*/
        List<ScenicOrders> entityByUserId = scenicOrdersService.getEntityByUserId((Integer) request.getSession().getAttribute(Consts.USERID));
        model.addAttribute("ScenicMessList",entityByUserId);
        return "/personal/scenicOrdersMessage";
    }

    /*退掉景点票*/
    @ResponseBody
    @RequestMapping("/refundTickets")
    public Object refundTickets(@RequestParam("id")Integer id){
        int i = scenicOrdersService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        if (i>0){
            jsonObject.put(Consts.RES,1);
            return jsonObject;
        }else {
            jsonObject.put(Consts.RES,0);
            return jsonObject;
        }
    }

    @RequestMapping("/orders")
    public String orders(HttpServletRequest request,Model model){
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


    /*建议*/
    @RequestMapping("/uAdvise")
    public String uAdvise(){
        return "/personal/uAdvise";
    }
}
