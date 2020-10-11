package cn.jiaxin.service.impl;

import cn.jiaxin.dao.ITagDao;
import cn.jiaxin.dao.IWorkDao;
import cn.jiaxin.domain.Tag;
import cn.jiaxin.domain.User;
import cn.jiaxin.domain.Work;
import cn.jiaxin.service.IWorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class WorkServiceImpl implements IWorkService {

    @Autowired
    private IWorkDao workDao;
    @Autowired
    private ITagDao tagDao;

    @Override
    public void publishWork(MultipartFile imgFile, Work work, String path, List<Tag> tags) {

        //完成对works表的相关操作
        workDao.addWork(work);
        int wid = work.getWid();
        //设置上传文件的名称
        String originalFileName = imgFile.getOriginalFilename();//获取文件原名称
        String suffix  = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);//获取文件的拓展名
        String filename = ((Integer)wid).toString() + "." + suffix;//拼接完成文件的名称
        //完成文件上传
        try {
            imgFile.transferTo(new File(path,filename));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //更新work的地址
        work.setAddress("userinfo\\"+work.getUid()+"\\"+filename);
        System.out.println(work.getAddress());
        workDao.updateWork(work);



        //完成对tags表的相关操作及tagoener表的相关操作
        Tag x = null;//用来接收表中查询的结果
        for (Tag tag : tags) {
            if ((x = tagDao.findTagByName(tag.getTname())) != null ){//查询表中是否有此tag
                tag.setTcount(x.getTcount()+1);
                tagDao.update(tag);//有就数量+1
            }else{
                tagDao.addTag(tag);//没有就创建这个tag
            }
            tagDao.addTagowner(wid,tag.getTname());
        }

    }

    @Override
    public void deleteWork(int wid) {
        workDao.deleteWork(7);
        return;
    }

    @Override
    public List<Work> recommend(User user) {
        return null;
    }

    @Override
    public Work workpage(int wid) {
        Work work = workDao.findWorkByWid(wid);
        return work;
    }
}
