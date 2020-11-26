package cn.han.utils;

import cn.han.entity.Seats;
import cn.han.entity.Stations;
import cn.han.entity.Train;
import cn.han.mapper.StationsMapper;
import cn.han.service.SeatsService;
import cn.han.service.StationsService;
import cn.han.service.TrainService;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

public class QueryTicketsUtils {
    public static void queryTickets(Train train, HttpServletRequest request, Model model, TrainService trainService, StationsService stationsService, SeatsService seatsService) {
        String start_place = train.getStart_place();
        String end_place = train.getEnd_place();
        request.getSession().setAttribute(Consts.START_PLACE, start_place);
        request.getSession().setAttribute(Consts.END_PLACE, end_place);
        //根据出发点和目的地初步判断车次
        List<String> strings = trainService.queryAllStations();
        ArrayList<String> train_numbers = new ArrayList<>();
        for (String s : strings) {
            String train_number = s.substring(0, s.indexOf("-"));
            ArrayList<String> strings1 = new ArrayList<>();
            String remain_s = s.substring(s.indexOf("-") + 1, s.length());
            StringTokenizer stringTokenizer = new StringTokenizer(remain_s, ",");
            while (stringTokenizer.hasMoreTokens()) {
                strings1.add(stringTokenizer.nextToken());
            }
            int mark = 0;
            for (int i = 0; i < strings1.size(); i++) {
                if (mark == 0) {
                    if (start_place.equals(strings1.get(i))) {
                        mark += 1;
                    }
                } else if (mark == 1) {
                    if (end_place.equals(strings1.get(i))) {
                        mark += 1;
                    }
                }
            }
            if (mark == 2) {
                train_numbers.add(train_number);
            }
        }
        //根据出发时间再次筛选
        ArrayList<String> train_numbers2 = new ArrayList<>();
        Date start_time = train.getStart_time();
        for (String s : train_numbers) {
            List<String> strings1 = stationsService.queryByTime(start_time, s, start_place);
            if (strings1.size() != 0) {
                train_numbers2.add(s);
            }
        }
        model.addAttribute("trains", train_numbers2);
        request.getSession().setAttribute("trains2",train_numbers2);


        //查询余座
        HashMap<String, ArrayList> stringHashMapHashMap = new HashMap<>();
        for (String s : train_numbers2) {
            int Hard_seat_ticketsCount = 0;
            int Soft_seat_ticketsCount = 0;
            int Soft_sleeper_ticketsCount = 0;
            ArrayList<Object> allSeats_ByType_Hard_seat = new ArrayList<>();
            ArrayList<Object> allSeats_ByType_Soft_seat = new ArrayList<>();
            ArrayList<Object> allSeats_ByType_Soft_sleeper = new ArrayList<>();

            //拿到出发地和目的地在整个车次中的索引位置
            int start_place_index = Train_tickets.getIndexOfCheCi(trainService, s, start_place);
            int end_place_index = Train_tickets.getIndexOfCheCi(trainService, s, end_place);

            //根据车次号拿到这个车次座位的各个站点情况并查询余票，把每个可用的车座都拿到
            Map<Integer, String> integerBooleanMap = seatsService.queryIdOccupiedAreaFlag(s);
            for (Map.Entry<Integer, String> entry : integerBooleanMap.entrySet()) {
                char[] chars = entry.getValue().toCharArray();
                boolean b = Train_tickets.IsSeatEffective(chars, start_place_index, end_place_index);
                if (b) {
                    Integer seat_id = entry.getKey();
                    Seats entityById = seatsService.getEntityById(seat_id);
                    int carriage_number = entityById.getCarriage_number();
                    int seat_number = entityById.getSeat_number();

                    ArrayList<Object> seat_detail = new ArrayList<>();
                    seat_detail.add(carriage_number);
                    seat_detail.add(seat_number);
                    String seat_type = seatsService.judgeSeatTypeById(seat_id);
                    if (seat_type.equals("硬座")) {
                        seat_detail.add("硬座");
                        Hard_seat_ticketsCount++;
                        allSeats_ByType_Hard_seat.add(seat_detail);
                    } else if (seat_type.equals("软座")) {
                        seat_detail.add("软座");
                        Soft_seat_ticketsCount++;
                        allSeats_ByType_Soft_seat.add(seat_detail);
                    } else {
                        seat_detail.add("软卧");
                        Soft_sleeper_ticketsCount++;
                        allSeats_ByType_Soft_sleeper.add(seat_detail);
                    }
                }
            }
            HashMap<String, ArrayList<Object>> stringIntegerHashMap = new HashMap<>();
            stringIntegerHashMap.put("硬座", allSeats_ByType_Hard_seat);
            stringIntegerHashMap.put("软座", allSeats_ByType_Soft_seat);
            stringIntegerHashMap.put("软卧", allSeats_ByType_Soft_sleeper);

            Stations stations = stationsService.queryByTnu_Sta(s, start_place);
            Date out_time = stations.getOut_time();
            Stations stations1 = stationsService.queryByTnu_Sta(s, end_place);
            Date in_time = stations1.getIn_time();
            ArrayList arrayList = new ArrayList();
            arrayList.add(stringIntegerHashMap);
            arrayList.add(out_time);
            arrayList.add(in_time);

            Train entityByTrain_number = trainService.getEntityByTrain_number(s);
            String train_type = entityByTrain_number.getTrain_type();
            arrayList.add(train_type);

            String pass_stations = entityByTrain_number.getPass_stations();
            String remain_s = pass_stations.substring(pass_stations.indexOf("-") + 1, pass_stations.length());
            ArrayList<String> strings1 = new ArrayList<>();
            StringTokenizer stringTokenizer = new StringTokenizer(remain_s, ",");
            while (stringTokenizer.hasMoreTokens()) {
                strings1.add(stringTokenizer.nextToken());
            }
            arrayList.add(strings1);
            arrayList.add(strings1.get(0));
            arrayList.add(strings1.get(strings1.size()-1));

            if(start_place.equals(strings1.get(0))){
                arrayList.add("始");
            }else {
                arrayList.add("过");
            };
            if(end_place.equals(strings1.get(strings1.size()-1))){
                arrayList.add("终");
            }else {
                arrayList.add("过");
            }

            stringHashMapHashMap.put(s, arrayList);
        }
        model.addAttribute("seats", stringHashMapHashMap);
        request.getSession().setAttribute("ticketsDetails",stringHashMapHashMap);
    }

}
