package cn.jiaxin.service.impl;

import cn.jiaxin.dao.IUserDao;
import cn.jiaxin.domain.User;
import cn.jiaxin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public void findAllUser() {
        List<User> allUser = userDao.findAllUser();
        for (User user : allUser) {
            System.out.println("----------一个User对象--------------");
            System.out.println(user);
        }
        return;
    }

    @Override
    public User findUserByUid(String uid) {

        User user = userDao.findUserByUid(uid);
        System.out.println(user);

        return user;
    }

    @Override
    public void registerUser(User user) {
        //调用dao吧用户存入到数据库中
        userDao.addUser(user);
        //获取刚才插入的用户
        user = userDao.findUserByEmail(user.getEmail());
        //根据uid更新用户的userfloder
        user.setUserfolder(user.getUserfolder()+user.getUid()+"\\");
        userDao.updateUser(user);
        //根据在用户uid的文件夹里为用户创造一个文件夹用来存放头像和作品
        File file = new File(user.getUserfolder());
        System.out.println("==========================>"+user.getUserfolder());
        file.mkdirs();
        return;
    }

    @Override
    public void deleteUser(int uid) {
        userDao.deleteUser(uid);
        return ;
    }

    @Override
    public User login(String email, String password) {
        return userDao.findUserByEmailAndPassword(email,password);
    }
}
