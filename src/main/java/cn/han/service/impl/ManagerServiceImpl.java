package cn.han.service.impl;

import cn.han.entity.Manager;
import cn.han.mapper.ManagerMapper;
import cn.han.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    private ManagerMapper managerMapper;

    @Override
    public Manager getByEntity(Manager manager) {
        return managerMapper.getByEntity(manager);
    }

    @Override
    public int insert(Manager manager) {
        if(managerMapper.getByEntity(manager)==null){
            managerMapper.insert(manager);
            return 1;
        }else {
            return 0;
        }
    }

    @Override
    public Manager getById(int id) {
        return managerMapper.getById(id);
    }

    @Override
    public Manager getEntityByManager_name(String manager_name) {
        return managerMapper.getEntityByManager_name(manager_name);
    }
}
