package cn.han.utils;

import cn.han.service.SeatsService;
import org.springframework.transaction.annotation.Transactional;

public class RefundTickets {
    public static boolean refundTickets(String occupiedAreaFlagById, int start_place_index, int end_place_index, SeatsService seatsService,int seat_id){
        char[] chars = occupiedAreaFlagById.toCharArray();
        for (int i = start_place_index; i < end_place_index; i++) {
            chars[i]='0';
        }
        String s ="";
        for (int i = 0;i<chars.length;i++){
            s = s+chars[i];
        }
        int i = seatsService.updateOccupiedAreaFlagById(s, seat_id);
        if (i==1) {
            return true;
        }else {
            return false;
        }
    }

}
