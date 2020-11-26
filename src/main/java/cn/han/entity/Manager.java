package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 管理员
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Manager implements Serializable {
    private Integer id;

    private String manager_name;

    private String manager_password;

    private String phone_number;

    private Integer manager_age;

    private String manager_sex;
}
