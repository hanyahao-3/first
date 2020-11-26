package cn.han.service.impl;

import cn.han.entity.Orders;
import cn.han.mapper.OrdersMapper;
import cn.han.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public int addOrderByEntity(Orders orders) {
        return ordersMapper.addOrderByEntity(orders);
    }

    @Override
    public List<Orders> getEntityByOf_user(String of_user) {
        return ordersMapper.getEntityByOf_user(of_user);
    }

    @Override
    public int deleteByEntity(Orders orders) {
        return ordersMapper.deleteByEntity(orders);
    }
}
