package cn.han.service;

import cn.han.entity.Seats;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

public interface SeatsService {
    Map<Integer,String> queryIdOccupiedAreaFlag(String train_number);
    Seats getById(Integer id);
    String judgeSeatTypeById(Integer id);
    String getOccupiedAreaFlagById(Integer id);
    int updateOccupiedAreaFlagById(@Param("occupiedAreaFlag")String occupiedAreaFlag, @Param("id")Integer id);
    Seats getEntityById(Integer id);
    Seats getEntityByCarriage_Seat_trainNumber(@Param("carriage_number")int carriage_number,@Param("seat_number")int seat_number,@Param("train_number")String train_number);
}
