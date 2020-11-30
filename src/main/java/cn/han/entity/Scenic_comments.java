package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Scenic_comments {
    private Integer id;

    private String comment_content;

    private Integer user_id;

    private Date comment_time;

    private String scenic_name;

    private User user;
}
