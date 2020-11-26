package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Train implements Serializable {
    private Integer id;

    private String train_number;

    private String start_place;

    private String end_place;

    private Date start_time;

    private Date end_time;

    private String train_type;

    private String pass_stations;
}
