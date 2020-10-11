package cn.jiaxin.dao;

import cn.jiaxin.domain.Tag;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ITagDao {

    /**
     * 按名字查找标签
     * @return
     */
    @Select("select * from tags where tname = #{tname}")
    public Tag findTagByName(String tname);

    /**
     * 按热度搜寻标签
     * @return
     */
    @Select("Select * from tags order by tcount desc")
    public List<Tag> findSortTagsList();

    /**
     * 新增tag标签
     * @param tag
     */
    @Insert("insert into tags values(#{tname},#{tcount})")
    public void addTag(Tag tag);

    /**
     * 更新tag的tcount数字
     * @param tag
     */
    @Update("update tags set tcount=#{tcount} where tname=#{tname}")
    public void update(Tag tag);

    /**
     * 删除tag标签
     * @param tname
     */
    @Delete("delete from tags where tname = #{tname}")
    public void delete(String tname);

    //tagowner表的操作
    /**
     * 新增tagowner
     * @param tname
     */
    @Insert("insert into tagowner values(#{wid},#{tname},1)")
    public void addTagowner(@Param("wid")int wid, @Param("tname")String tname);

    /**
     * 查找wid作品的所有tag
     */
    @Select("select * from tagowner where wid = #{wid}")
    public List<Tag> findTagByWid(int wid);

}
