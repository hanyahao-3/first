package cn.han.service;

import cn.han.entity.ScenicOrders;

import java.util.List;

public interface ScenicOrdersService {
    int insertEntity(ScenicOrders scenicOrders);

    List<ScenicOrders> getEntityByUserId(Integer id);

    int deleteById(Integer id);
}
