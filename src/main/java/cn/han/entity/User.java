package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {

   private Integer id;

   private String user_name;

   private String user_password;

   private String phone_number;

   private String user_age;

   private String user_sex;
}
