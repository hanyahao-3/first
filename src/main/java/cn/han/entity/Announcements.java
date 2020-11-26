package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Announcements implements Serializable {
    private Integer id;

    private Date add_time;

    private String content;

    private String annountcments_name;
}
