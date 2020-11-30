package cn.han.mapper;

import cn.han.entity.Scenic;

import java.util.List;

public interface ScenicMapper {
    Scenic getById(Integer id);

    List<Scenic> getAll();

    int insertEntity(Scenic scenic);

    int deleteById(Integer id);

    int updateByEntity(Scenic scenic);

    List<Scenic> getHotScenic();
}
