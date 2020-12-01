package cn.han.service.impl;

import cn.han.entity.ScenicOrders;
import cn.han.mapper.ScenicOrdersMapper;
import cn.han.service.ScenicOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScenicOrdersMapperImpl implements ScenicOrdersService {

    @Autowired
    private ScenicOrdersMapper scenicOrdersMapper;
    @Override
    public int insertEntity(ScenicOrders scenicOrders) {
        return scenicOrdersMapper.insertEntity(scenicOrders);
    }

    @Override
    public List<ScenicOrders> getEntityByUserId(Integer id) {
        return scenicOrdersMapper.getEntityByUserId(id);
    }

    @Override
    public int deleteById(Integer id) {
        return scenicOrdersMapper.deleteById(id);
    }
}
