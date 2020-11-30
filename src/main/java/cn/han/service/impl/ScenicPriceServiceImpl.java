package cn.han.service.impl;

import cn.han.entity.Scenic;
import cn.han.entity.Scenic_price;
import cn.han.mapper.ScenicMapper;
import cn.han.mapper.ScenicPriceMapper;
import cn.han.service.ScenicPriceService;
import cn.han.service.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScenicPriceServiceImpl implements ScenicPriceService {

    @Autowired
    private ScenicPriceMapper scenicPriceMapper;

    @Override
    public Scenic_price getById(Integer id) {
        return scenicPriceMapper.getById(id);
    }
}
