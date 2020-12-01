package cn.han.mapper;

import cn.han.entity.ScenicOrders;

import java.util.List;

public interface ScenicOrdersMapper {
    int insertEntity(ScenicOrders scenicOrders);
    List<ScenicOrders> getEntityByUserId(Integer user_id);
    int deleteById(Integer id);
}
