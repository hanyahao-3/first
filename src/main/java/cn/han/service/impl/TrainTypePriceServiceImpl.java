package cn.han.service.impl;

import cn.han.mapper.TrainTypePriceMapper;
import cn.han.service.TrainTypePriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TrainTypePriceServiceImpl implements TrainTypePriceService {

    @Autowired
    private TrainTypePriceMapper trainTypePriceMapper;

    @Override
    public String getPriceByTrainType(String train_type) {
        return trainTypePriceMapper.getPriceByTrainType(train_type);
    }
}
