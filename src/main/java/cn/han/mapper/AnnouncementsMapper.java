package cn.han.mapper;

import cn.han.entity.Announcements;

import java.util.List;

public interface AnnouncementsMapper {
    List<Announcements> getAll();

    int insertEntity(Announcements announcements);

    Announcements getById(Integer id);

    int deleteById(Integer id);
}
