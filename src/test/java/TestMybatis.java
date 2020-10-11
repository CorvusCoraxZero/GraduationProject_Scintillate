import cn.jiaxin.dao.IUserDao;
import cn.jiaxin.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestMybatis {

    @Autowired
    private IUserDao userDao;

    @Test
    public void druidTest() {

        List<User> allUser = userDao.findAllUser();
        System.out.println(allUser);
    }


    @Test
    public void userDaoTest2() throws ParseException {
        User user = new User();
        user.setEmail("123345");
        user.setPassword("123456");
        user.setUname("六六六");
        user.setBirthday(new SimpleDateFormat("yyyy-mm-dd").parse("1998-2-25"));
        userDao.addUser(user);
    }
}
