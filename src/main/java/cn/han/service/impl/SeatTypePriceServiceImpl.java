package cn.han.service.impl;

import cn.han.mapper.SeatTypePriceMapper;
import cn.han.service.SeatTypePriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeatTypePriceServiceImpl  implements SeatTypePriceService {
    @Autowired
    private SeatTypePriceMapper seatTypePriceMapper;

    @Override
    public String getPriceBySeatType(String seat_type) {
        return seatTypePriceMapper.getPriceBySeatType(seat_type);
    }
}
