package cn.han.service;

import cn.han.entity.Scenic;

import java.util.List;

public interface ScenicService {
    Scenic getById(Integer id);

    List<Scenic> getAll();

    int insertEntity(Scenic scenic);

    int deleteById(Integer id);

    int updateByEntity(Scenic scenic);

    List<Scenic> getHotScenic();

    Scenic testSc();
}
