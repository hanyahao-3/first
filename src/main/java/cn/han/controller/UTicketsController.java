package cn.han.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping("/uTickets")
public class UTicketsController {

    @RequestMapping("/trainDetail")
    public String trainDetail(HttpServletRequest request,@Param("train_number")String train_number, Model model){
        model.addAttribute("train_number",train_number);
        HashMap<String, ArrayList> ticketsDetails = (HashMap<String, ArrayList>) request.getSession().getAttribute("ticketsDetails");
        ArrayList arrayList = ticketsDetails.get(train_number);
        request.getSession().setAttribute("ticketsDetail",arrayList);
        request.getSession().setAttribute("train_number",train_number);
        return "/tickets/trainDetails";
    }
}
