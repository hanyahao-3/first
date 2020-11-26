package cn.han.service;

import cn.han.entity.Manager;

public interface ManagerService {
    Manager getByEntity(Manager manager);
    int insert(Manager manager);
    Manager getById(int id);
    Manager getEntityByManager_name(String manager_name);
}
