package cn.han.mapper;

import cn.han.entity.Stations;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface StationsMapper {
    List<String> queryByTime(@Param("start_time") Date start_time, @Param("train_number") String train_number,@Param("start_place")String start_place);
    List<String> queryByTrain_number(String train_number);
    Stations queryByTnu_Sta(@Param("train_number")String train_number,@Param("station")String station);
}
