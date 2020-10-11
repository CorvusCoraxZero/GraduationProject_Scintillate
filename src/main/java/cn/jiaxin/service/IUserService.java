package cn.jiaxin.service;

import cn.jiaxin.domain.User;

public interface IUserService {
    /**
     * 查询所有的User的信息
     */
    public void findAllUser();

    /**
     * 通过id查询用户
     * @return
     */
    public User findUserByUid(String uid);

    /**
     * 用户登录
     * @param email
     * @param password
     * @return
     */
    public User login(String email,String password);

    /**
     * 新增一个用户
     * @param user
     * @return
     */
    public void registerUser(User user);

    /**
     * 删除一个用户
     * @param uid
     * @return
     */
    public void deleteUser(int uid);
}
