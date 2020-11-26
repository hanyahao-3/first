package cn.han.utils;

import cn.han.entity.Orders;
import cn.han.entity.Seats;
import cn.han.entity.Train;
import cn.han.service.OrdersService;
import cn.han.service.SeatsService;
import cn.han.service.TrainService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class BuyTicketsUtils {
    public static void buyTickets(SeatsService seatsService, Integer seat_id, String train_number, TrainService trainService, HttpServletRequest request, Object attribute, OrdersService ordersService){
        //根据提供的票的信息拿到票的实体
        String occupiedAreaFlagById = seatsService.getOccupiedAreaFlagById(seat_id);
        Seats seatEntityById = seatsService.getEntityById(seat_id);
        Train entityByTrain_number = trainService.getEntityByTrain_number(train_number);
        String start_place = (String) request.getSession().getAttribute(Consts.START_PLACE);
        String end_place = (String) request.getSession().getAttribute(Consts.END_PLACE);

        //拿到用户出发地和目的地在对应车次的索引
        String s1 = trainService.queryByTrain_number(train_number);
        ArrayList<String> tpass_stations = new ArrayList<>();
        String remain_s = s1.substring(s1.indexOf("-") + 1, s1.length());
        StringTokenizer stringTokenizer = new StringTokenizer(remain_s, ",");
        while (stringTokenizer.hasMoreTokens()) {
            tpass_stations.add(stringTokenizer.nextToken());
        }
        int start_place_index = ArrayUtils.getIndex(tpass_stations, start_place);
        int end_place_index = ArrayUtils.getIndex(tpass_stations, end_place);

        //改变该索引的状态 == 买票
        char[] chars = occupiedAreaFlagById.toCharArray();
        for (int i = start_place_index; i < end_place_index; i++) {
            chars[i]='1';
        }
        String s ="";
        for (int i = 0;i<chars.length;i++){
            s = s+chars[i];
        }
        int i = seatsService.updateOccupiedAreaFlagById(s, seat_id);

        //改变后，判断是否购买成功
        if (i==1) {
            System.out.println("购买成功！");
        }else {
            System.out.println("购买失败！");
        }

        //购买成功后，数据库添加相应的购买记录
        Orders order = new Orders();
        order.setCarriage_number(seatEntityById.getCarriage_number());
        order.setSeat_number(seatEntityById.getSeat_number());
        order.setTrain_number(seatEntityById.getTrain_number());
        order.setFrom_place(start_place);
        order.setTo_place(end_place);
        order.setOf_user((String) attribute);
        int i1 = ordersService.addOrderByEntity(order);
        if(i1 == 1){
            System.out.println("订单添加数据库成功！");
        }else {
            System.out.println("订单添加数据库失败！");
        }
    }
}
