package cn.han.service.impl;

import cn.han.mapper.StationPriceMapper;
import cn.han.service.StationPriceService;
import cn.han.service.StationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class StationPriceServiceImpl implements StationPriceService {

    @Autowired
    private StationPriceMapper stationPriceMapper;

    @Override
    public BigDecimal getPriceByStation(String from_station, String end_station) {
        return stationPriceMapper.getPriceByStation(from_station,end_station);
    }
}
