package cn.han.service.impl;

import cn.han.entity.Stations;
import cn.han.mapper.StationsMapper;
import cn.han.service.StationsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class StationsServiceImpl implements StationsService{

    @Autowired
    private StationsMapper stationsMapper;

    @Override
    public List<String> queryByTime(Date start_time, String train_number,@Param("start_place")String start_place) {
        return stationsMapper.queryByTime(start_time,train_number,start_place);
    }

    @Override
    public List<String> queryByTrain_number(String train_number) {
        return stationsMapper.queryByTrain_number(train_number);
    }

    @Override
    public Stations queryByTnu_Sta(String train_number, String station) {
        return stationsMapper.queryByTnu_Sta(train_number, station);
    }
}
