import cn.jiaxin.dao.ITagDao;
import cn.jiaxin.dao.IUserDao;
import cn.jiaxin.domain.Tag;
import cn.jiaxin.service.IUserService;
import cn.jiaxin.service.IWorkService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.File;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestSth {

    @Autowired
    private IUserService userservice;
    @Autowired
    private IWorkService workService;
    @Autowired
    private IUserDao userDao;
    @Autowired
    private ITagDao tagDao;


    @Test
    public void testUserService() {
        File file = new File("D:\\JAVA\\PROJECT\\GraduationProject_Scintillate\\target\\GraduationProject_Scintillate\\userinfo\\asd\\");
        boolean exists = file.mkdirs();
        System.out.println(exists);
    }

    @Test
    public void testAop() {
        //userservice.deleteUser(7);
        workService.deleteWork(7);
    }

    @Test
    public void testAutoIncreasement() {
        Tag tag = new Tag("金木");
        tagDao.addTag(tag);
    }
}
