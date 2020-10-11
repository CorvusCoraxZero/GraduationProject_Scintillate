package cn.jiaxin.service;

import cn.jiaxin.domain.Tag;
import cn.jiaxin.domain.User;
import cn.jiaxin.domain.Work;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface IWorkService {
    /**
     * 发布新作品
     */
    public void publishWork(MultipartFile imgFile, Work work, String path, List<Tag> tags);

    /**
     * 根据用户，推荐作品
     */
    public List<Work> recommend(User user);

    /**
     * 删除作品
     * @param wid
     */
    public void deleteWork(int wid);

    /**
     * 为作品的详情页面准备数据
     * @param wid
     */
    public Work workpage(int wid);
}
