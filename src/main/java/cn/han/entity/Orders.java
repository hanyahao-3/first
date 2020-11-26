package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orders implements Serializable {
    private Integer id;

    private String train_number;

    private String from_place;

    private String to_place;

    private Integer carriage_number;

    private Integer seat_number;

    private String of_user;
}
