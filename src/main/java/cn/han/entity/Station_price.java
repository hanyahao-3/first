package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Station_price implements Serializable {
    private Integer id;

    private String from_station;

    private String end_station;

    private BigDecimal station_price;
}
