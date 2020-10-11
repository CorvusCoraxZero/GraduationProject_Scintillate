package cn.jiaxin.dao;

import cn.jiaxin.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {
    /**
     * 根据Id查找用户
     * @return
     */
    @Select("select * from users where uid = #{uid};")
    public User findUserByUid(String uid);

    /**
     * 根据邮箱查询用户
     * @param email
     * @return
     */
    @Select("select * from users where email=#{email}")
    public User findUserByEmail(String email);

    /**
     * 根据邮箱和密码查询用户
     * @param email
     * @param password
     * @return
     */
    @Select("select * from users where email=#{email} and password=#{password}")
    public User findUserByEmailAndPassword(@Param("email") String email,@Param("password") String password);

    /**
     * 根据用户名查询用户
     * @param uname
     * @return
     */
    @Select("select * from users where uname = #{uname};")
    public List<User> findUserByUname(String uname);

    /**
     * 查找所有用户
     * @return
     */
    @Select("select * from users")
    public List<User> findAllUser();

    /**
     * 增加用户
     * @param user
     */
    @Insert("insert into users values(#{uid},#{email},#{password},#{uname},#{gender},#{birthday},#{role},#{status},#{code},#{userfolder},#{introduce})")
    /*@SelectKey(statement = "select last_insert_id()",keyProperty="uid",before=true,resultType=Integer.class,statementType= StatementType.STATEMENT)*/
    public int addUser(User user);

    /**
     * 更新用户
     * @param user
     */
    @Update("update users set password=#{password},uname=#{uname},gender=#{gender},birthday=#{birthday},role=#{role},status=#{status},userfolder=#{userfolder},introduce=#{introduce} where uid=#{uid}")
    public void updateUser(User user);

    /**
     * 删除用户
     * @param uid
     */
    @Delete("delete from users where uid=#{uid}")
    public void deleteUser(int uid);
}