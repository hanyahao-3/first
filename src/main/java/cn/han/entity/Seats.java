package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import sun.security.util.BitArray;

import java.beans.Transient;
import java.io.Serializable;
import java.util.BitSet;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Seats implements Serializable {
    private Integer id;

    private String train_number;

    private String occupiedAreaFlag;

    private int carriage_number;

    private int seat_number;

    private String seat_type;
}
