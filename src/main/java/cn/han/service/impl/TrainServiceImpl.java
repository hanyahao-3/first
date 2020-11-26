package cn.han.service.impl;

import cn.han.entity.Train;
import cn.han.mapper.TrainMapper;
import cn.han.service.TrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TrainServiceImpl implements TrainService {

    @Autowired
    private TrainMapper trainMapper;

    @Override
    public List<String> queryAllStations() {
        return trainMapper.queryAllStations();
    }

    @Override
    public String queryByTrain_number(String train_number) {
        return trainMapper.queryByTrain_number(train_number);
    }

    @Override
    public Train getEntityByTrain_number(String train_number) {
        return trainMapper.getEntityByTrain_number(train_number);
    }
}
