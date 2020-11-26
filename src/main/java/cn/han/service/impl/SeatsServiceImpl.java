package cn.han.service.impl;

import cn.han.entity.Seats;
import cn.han.mapper.SeatsMapper;
import cn.han.service.SeatsService;
import cn.han.utils.MapperSessionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class SeatsServiceImpl implements SeatsService {
    @Autowired
    private MapperSessionMapper mapperSessionMapper;
    @Autowired
    private SeatsMapper seatsMapper;

    public Map<Integer,String> queryIdOccupiedAreaFlag(String train_number){
        Map<Integer,String> mapIdOccupiedAreaFlag = mapperSessionMapper.queryIdOccupiedAreaFlag(train_number);
        return mapIdOccupiedAreaFlag;
    }

    @Override
    public Seats getById(Integer id) {
        return seatsMapper.getById(id);
    }

    @Override
    public String judgeSeatTypeById(Integer id) {
        return seatsMapper.judgeSeatTypeById(id);
    }

    @Override
    public String getOccupiedAreaFlagById(Integer id) {
        return seatsMapper.getOccupiedAreaFlagById(id);
    }

    @Override
    public int updateOccupiedAreaFlagById(String occupiedAreaFlag, Integer id) {
        return seatsMapper.updateOccupiedAreaFlagById(occupiedAreaFlag, id);
    }

    @Override
    public Seats getEntityById(Integer id) {
        return seatsMapper.getEntityById(id);
    }

    @Override
    public Seats getEntityByCarriage_Seat_trainNumber(int carriage_number, int seat_number, String train_number) {
        return seatsMapper.getEntityByCarriage_Seat_trainNumber(carriage_number, seat_number, train_number);
    }

}
