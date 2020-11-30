package cn.han.service.impl;

import cn.han.entity.Scenic;
import cn.han.entity.Scenic_comments;
import cn.han.mapper.ScenicCommentsMapper;
import cn.han.mapper.ScenicMapper;
import cn.han.service.ScenicCommentsService;
import cn.han.service.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScenicCommentsServiceImpl implements ScenicCommentsService {

    @Autowired
    private ScenicCommentsMapper scenicCommentsMapper;

    @Override
    public Scenic_comments getById(Integer id) {
        return scenicCommentsMapper.getById(id);
    }

    @Override
    public List<Scenic_comments> getByScenicName(String scenic_name) {
        return scenicCommentsMapper.getByScenicName(scenic_name);
    }
}
