package cn.han.service;

import cn.han.entity.Announcements;

import java.util.List;

public interface AnnouncementsService {
    List<Announcements> getAll();

    int insertEntity(Announcements announcements);

    Announcements getById(Integer id);

    int deleteById(Integer id);
}
