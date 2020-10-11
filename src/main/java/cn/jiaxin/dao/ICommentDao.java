package cn.jiaxin.dao;

import cn.jiaxin.domain.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICommentDao {

    /**
     * 查找当前作品所有的评论
     * @param wid
     * @return
     */
    public List<Comment> findWorkAllComments(int wid);

    /**
     * 查找某人对该作品的所有评论
     * @param wid
     * @param uid
     * @return
     */
    public List<Comment> findOnceCommentForWork(int wid,int uid);

    /**
     * 查找对某人的所有评论
     * @param towho
     * @return
     */
    public List<Comment> findAllCommentForYou(int towho);

    /**
     * 发布一个评论
     * @param comment
     */
    public void publishComment(Comment comment);

    /**
     * 删除一个评论 wid和sequence共同构成主键
     * @param wid
     * @param sequence
     */
    public void deleteComment(int wid,int sequence);
}
