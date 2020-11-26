package cn.han.mapper;

import cn.han.entity.Train;

import java.util.List;
import java.util.Map;

public interface TrainMapper {
    List<String> queryAllStations();
    String queryByTrain_number(String train_number);
    Train getEntityByTrain_number(String train_number);
}
