package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Scenic_detail {
    private Integer id;

    private String travel_time;

    private String travel_type;

    private String contact_phone;

    private String numbering;

    private String destination;

    private String describes;
}
