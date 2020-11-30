package cn.han.service.impl;

import cn.han.entity.Scenic;
import cn.han.mapper.ScenicMapper;
import cn.han.service.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScenicServiceImpl implements ScenicService {

    @Autowired
    private ScenicMapper scenicMapper;

    @Override
    public Scenic getById(Integer id) {
        return scenicMapper.getById(id);
    }

    @Override
    public List<Scenic> getAll() {
        return scenicMapper.getAll();
    }

    @Override
    public int insertEntity(Scenic scenic) {
        return scenicMapper.insertEntity(scenic);
    }

    @Override
    public int deleteById(Integer id) {
        return scenicMapper.deleteById(id);
    }

    @Override
    public int updateByEntity(Scenic scenic) {
        return scenicMapper.updateByEntity(scenic);
    }

    @Override
    public List<Scenic> getHotScenic() {
        return scenicMapper.getHotScenic();
    }
}
