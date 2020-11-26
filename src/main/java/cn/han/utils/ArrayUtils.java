package cn.han.utils;

import java.util.ArrayList;

public class ArrayUtils {
    /**
     * 根据元素找到是否数组中存在改元素，若存在，返回该元素下标
     */
    public static int getIndex(ArrayList<String> arrayList, String value) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i).equals(value)) {
                return i;                  //字符串时，换为 equals
            }
        }
        return -1;//如果未找到返回-1
    }
}
