package cn.jiaxin.dao;

import cn.jiaxin.domain.Work;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;


@Repository
public interface IWorkDao {

    @Insert("insert into works(uid,wname,introduce,allow,address) values(#{uid},#{wname},#{introduce},#{allow},#{address})")
    @Options(useGeneratedKeys=true,keyColumn="wid",keyProperty="wid")
    public int addWork(Work work);

    @Select("select * from works where wid = #{wid}")
    public Work findWorkByWid(int wid);

    @Delete("delete from works where wid = #{wid}")
    public void deleteWork(int wid);

    @Update("update works set uid=#{uid},wname=#{wname},introduce=#{introduce},allow=#{allow},address=#{address} where wid = #{wid} ")
    public void updateWork(Work work);
}