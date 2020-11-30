package cn.han.mapper;

import cn.han.entity.Scenic_comments;

import java.util.List;

public interface ScenicCommentsMapper {
    Scenic_comments getById(Integer id);

    List<Scenic_comments> getByScenicName(String scenic_name);
}
