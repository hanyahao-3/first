package cn.han.service.impl;

import cn.han.entity.Announcements;
import cn.han.mapper.AnnouncementsMapper;
import cn.han.service.AnnouncementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnnouncementsServiceImpl implements AnnouncementsService {

    @Autowired
    private AnnouncementsMapper announcementsMapper;

    @Override
    public List<Announcements> getAll() {
        return announcementsMapper.getAll();
    }

    @Override
    public int insertEntity(Announcements announcements) {
        return announcementsMapper.insertEntity(announcements);
    }

    @Override
    public Announcements getById(Integer id) {
        return announcementsMapper.getById(id);
    }

    @Override
    public int deleteById(Integer id) {
        return announcementsMapper.deleteById(id);
    }
}
