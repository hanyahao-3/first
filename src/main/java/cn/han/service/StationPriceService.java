package cn.han.service;

import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;

public interface StationPriceService {
    BigDecimal getPriceByStation(@Param("from_station")String from_station, @Param("end_station")String end_station);
}
