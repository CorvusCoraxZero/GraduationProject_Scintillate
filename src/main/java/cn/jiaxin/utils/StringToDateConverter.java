package cn.jiaxin.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 把字符串转换成日期
 */
public class StringToDateConverter implements Converter<String, Date> {

    /**
     *
     * @param s 传入进来的字符串
     * @return
     */
    @Override
    public Date convert(String s) {

        if (s==null){
            throw new RuntimeException("请您传入数据");
        }
        DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
        //把字符串转换成日期
        try {
           return df.parse(s);
        } catch (Exception e) {
            throw new RuntimeException("数据类型转换出错");
        }
    }
}
