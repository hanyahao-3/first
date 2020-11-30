package cn.han.service;

import cn.han.entity.Scenic_comments;

import java.util.List;

public interface ScenicCommentsService {
    Scenic_comments getById(Integer id);

    List<Scenic_comments> getByScenicName(String scenic_name);
}
