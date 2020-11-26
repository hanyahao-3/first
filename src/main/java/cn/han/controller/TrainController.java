package cn.han.controller;

import cn.han.entity.Orders;
import cn.han.entity.Seats;
import cn.han.entity.Stations;
import cn.han.entity.Train;
import cn.han.service.*;
import cn.han.utils.*;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/train")
public class TrainController {
    @Autowired
    private TrainService trainService;
    @Autowired
    private StationsService stationsService;
    @Autowired
    private SeatsService seatsService;
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private TrainTypePriceService trainTypePriceService;
    @Autowired
    private SeatTypePriceService seatTypePriceService;

    /**
     * 查票
     */
    @RequestMapping("/queryTrain")
    public String queryTrain(Train train,@Param("datetime")String datetime, HttpServletRequest request, Model model) throws ParseException {
        Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(datetime);
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        simpleDateFormat.setLenient(false);
//        Date parse = simpleDateFormat.parse(datetime);
        train.setStart_time(parse);
        model.addAttribute("start_time",datetime);
        QueryTicketsUtils.queryTickets(train, request, model, trainService, stationsService, seatsService);
        return "/tickets/ticketsIndex";
    }

    /**
     * 获得金额
     */
    @ResponseBody
    @RequestMapping("/getTotalMoney")
    public Object getTotalMoney(Model model,@Param("carriage_number") Integer carriage_number, @Param("seat_number") Integer seat_number, @Param("train_number") String train_number, HttpServletRequest request) {
        JSONObject js = new JSONObject();
        Train entityByTrain_number = trainService.getEntityByTrain_number(train_number);

        String type2 = seatTypePriceService.getPriceBySeatType("硬座");

        String train_type = entityByTrain_number.getTrain_type();
        String priceByTrainType = trainTypePriceService.getPriceByTrainType(train_type);
        Seats entityByCarriage_seat_trainNumber = seatsService.getEntityByCarriage_Seat_trainNumber(carriage_number, seat_number, train_number);
        String seat_type = entityByCarriage_seat_trainNumber.getSeat_type();
        String priceBySeatType = seatTypePriceService.getPriceBySeatType(seat_type);
        model.addAttribute("priceByTrainType",priceBySeatType);
        model.addAttribute("priceBySeatType",priceBySeatType);
        js.put(Consts.RES,1);
        js.put("priceByTrainType",priceByTrainType);
        js.put("priceBySeatType",priceBySeatType);
        return js;
    }


    /**
     * 买票
     */
    @ResponseBody
    @RequestMapping("/buyTickets")
    public Object buyTickets(@Param("carriage_number") Integer carriage_number, @Param("seat_number") Integer seat_number, @Param("train_number") String train_number, HttpServletRequest request) {
        //看看是否登陆，若未登陆，返回登陆界面
//        Object attribute = request.getSession().getAttribute(Consts.USERNAME);
//        if (attribute == null) {
//            return "/users/uLogin";
//        }
        Object attribute = request.getSession().getAttribute(Consts.USERNAME);
        JSONObject js = new JSONObject();
        if (attribute == null) {
            js.put(Consts.RES,0);
            return js;
        }

        //输入的车站车厢车站信息是否符合实际
        Train entityByTrain_number = trainService.getEntityByTrain_number(train_number);
        if(carriage_number==null){
            js.put(Consts.RES,6);
            return js;
        }
        if (carriage_number>3){
            js.put(Consts.RES,3);
            return js;
        }
        if (seat_number >5){
            js.put(Consts.RES,4);
            return js;
        }
        if (entityByTrain_number == null){
            js.put(Consts.RES,5);
            return js;
        }
        //根据所选座位判断该座位是否能买
        Seats entityByCarriage_seat = seatsService.getEntityByCarriage_Seat_trainNumber(carriage_number, seat_number,train_number);
        String occupiedAreaFlag = entityByCarriage_seat.getOccupiedAreaFlag();
        char[] chars = occupiedAreaFlag.toCharArray();
        String start_place = (String) request.getSession().getAttribute(Consts.START_PLACE);
        String end_place = (String) request.getSession().getAttribute(Consts.END_PLACE);
        int start_place_index = Train_tickets.getIndexOfCheCi(trainService, train_number, start_place);
        int end_place_index = Train_tickets.getIndexOfCheCi(trainService, train_number, end_place);
        boolean b = Train_tickets.IsSeatEffective(chars, start_place_index, end_place_index);
        //如果能买，则购买成功，否则购买失败
        if (b) {
            int seat_id = entityByCarriage_seat.getId();
            BuyTicketsUtils.buyTickets(seatsService, seat_id, train_number, trainService, request, attribute, ordersService);
            js.put(Consts.RES,1);


            return js;
        } else {
            js.put(Consts.RES,2);
            return js;
        }
    }

    /**
     * 退票
     */

    @ResponseBody
    @RequestMapping("/refundTicket")
    //@Param("train_number")String train_number,@Param("carriage_number")int carriage_number,@Param("seat_number")int seat_number
    public Object refundTicket(Orders orders,HttpServletRequest request){
        JSONObject js = new JSONObject();
        String of_user = (String) request.getSession().getAttribute(Consts.USERNAME);

        //根据想要退的票的信息，拿到该票的实体
        Seats entityByCarriage_seat_trainNumber = seatsService.getEntityByCarriage_Seat_trainNumber(orders.getCarriage_number(), orders.getSeat_number(), orders.getTrain_number());
        String occupiedAreaFlag = entityByCarriage_seat_trainNumber.getOccupiedAreaFlag();
        String from_place = orders.getFrom_place();
        String to_place = orders.getTo_place();
        int start_place_index = Train_tickets.getIndexOfCheCi(trainService, orders.getTrain_number(), from_place);
        int end_place_index = Train_tickets.getIndexOfCheCi(trainService, orders.getTrain_number(), to_place);

        //判断是否退票成功
        boolean b = RefundTickets.refundTickets(occupiedAreaFlag, start_place_index, end_place_index, seatsService, entityByCarriage_seat_trainNumber.getId());
        //根据票的信息和of_user删掉用户对应的数据库购买记录
        orders.setOf_user(of_user);
        int i = ordersService.deleteByEntity(orders);
        if (b == true){
            js.put(Consts.RES,1);
            return js;
        }else {
            js.put(Consts.RES,0);
            return js;
        }
    }
}
