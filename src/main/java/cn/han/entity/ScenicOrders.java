package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.criteria.CriteriaBuilder;
import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScenicOrders implements Serializable {
    private Integer id;

    private Integer user_id;

    private  Integer scenic_id;

    private Date buy_time;

    private User user;

    private Scenic scenic;
}
