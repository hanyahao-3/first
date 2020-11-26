package cn.han.utils;

import cn.han.service.TrainService;

import java.util.ArrayList;
import java.util.StringTokenizer;

public class Train_tickets {

    /**
     * 查看座位是否可用
     */
    public static boolean IsSeatEffective(char[] chars, int soureIndex, int destIndex) {
        for (int i = soureIndex; i < destIndex; i++) {
            char aChar = chars[i];
            if (aChar == '0') {
                continue;
            }else {
                return false;
            }
        }
        return true;
    }

    /**
     * 找到出发地和目的地在整个车次的索引位置
     */
    public static int getIndexOfCheCi(TrainService trainService,String s,String start_place){
        String s1 = trainService.queryByTrain_number(s);
        ArrayList<String> tpass_stations = new ArrayList<>();
        String remain_s = s1.substring(s1.indexOf("-") + 1, s1.length());
        StringTokenizer stringTokenizer = new StringTokenizer(remain_s, ",");
        while (stringTokenizer.hasMoreTokens()) {
            tpass_stations.add(stringTokenizer.nextToken());
        }
        int start_place_index = ArrayUtils.getIndex(tpass_stations, start_place);
        return start_place_index;
    }

}
