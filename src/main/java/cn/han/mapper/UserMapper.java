package cn.han.mapper;

import cn.han.entity.User;

import java.util.List;

public interface UserMapper {
    User getByEntity(User user);
    int insert(User user);
    User getById(int id);
    User getEntityByUser_name(String user_name);
    List<User> getAll();
    int deleteById(Integer id);
    int updateById(User user);
}
