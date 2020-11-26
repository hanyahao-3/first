package cn.han.mapper;

import cn.han.entity.Orders;

import java.util.List;

public interface OrdersMapper {
    Orders getById(Integer id);
    int addOrderByEntity(Orders order);
    List<Orders> getEntityByOf_user(String of_user);
    int deleteByEntity(Orders orders);
}
