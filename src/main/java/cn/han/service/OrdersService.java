package cn.han.service;

import cn.han.entity.Orders;

import java.util.List;

public interface OrdersService {
    int addOrderByEntity(Orders orders);
    List<Orders> getEntityByOf_user(String of_user);
    int deleteByEntity(Orders orders);
}
