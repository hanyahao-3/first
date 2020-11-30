package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Scenic implements Serializable {
    private Integer id;

    private String scenic_name;

    private String url1;

    private String url2;

    private String url3;

    private String url4;

    private String url5;

    private int collection_sum;

    private Integer price_id;

    private Integer detail_id;

    private Scenic_price scenic_price;

    private Scenic_detail scenic_detail;

    private List<Scenic_comments> scenic_comments;
}
