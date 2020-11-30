package cn.han.service.impl;

import cn.han.entity.Scenic_detail;
import cn.han.mapper.ScenicDetailMapper;
import cn.han.service.ScenicDetailService;
import org.springframework.beans.factory.annotation.Autowired;

public class ScenicDetailServiceImpl implements ScenicDetailService {
    @Autowired
    private ScenicDetailMapper scenicDetailMapper;
    @Override
    public Scenic_detail getById(Integer id) {
        return scenicDetailMapper.getById(id);
    }
}
