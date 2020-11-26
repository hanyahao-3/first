package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.annotation.security.DenyAll;
import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Stations implements Serializable {
    private Integer id;

    private String train_number;

    private String station;

    private Date out_time;

    private Date in_time;
}
