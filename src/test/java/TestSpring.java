import cn.jiaxin.dao.IUserDao;
import cn.jiaxin.domain.User;
import cn.jiaxin.service.impl.UserServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestSpring {

   /* @Autowired
    private IAccountService as;
    @Autowired
    private ApplicationContext ac;*/

   @Autowired
    private UserServiceImpl userservice;
    @Autowired
    private IUserDao userDao;

   /* @Test
    public void original() {
        //加载配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        IAccountService accountDao = (IAccountService) ac.getBean("accountService");
        //调用方法
        accountDao.findAll();
    }*/

    @Test
    public void testUserService() {
        User user = new User();
        System.out.println(user);
        user.setEmail("testUserService");
        user.setPassword("TestUserService");
        user.setUname("test");
        userservice.registerUser(user);

        List<User> list = userDao.findUserByUname("test");
        if (!list.isEmpty()){
            for (User user1 : list) {
                System.out.println("查找到了这个User");
                System.out.println(user1);
            }
        }

    }

}
