package cn.han.service.impl;

import cn.han.entity.User;
import cn.han.mapper.UserMapper;
import cn.han.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getByEntity(User user) {
        return userMapper.getByEntity(user);
    }

    @Override
    public int insert(User user) {
        if(userMapper.getByEntity(user)==null){
            userMapper.insert(user);
            return 1;
        }else {
            return 0;
        }
    }

    @Override
    public User getById(int id) {
        return userMapper.getById(id);
    }

    @Override
    public User getEntityByUser_name(String user_name) {
        return userMapper.getEntityByUser_name(user_name);
    }

    @Override
    public List<User> getAll() {
        return userMapper.getAll();
    }

    @Override
    public int deleteById(Integer id) {
        return userMapper.deleteById(id);
    }

    @Override
    public int updateById(User user) {
        return userMapper.updateById(user);
    }
}
