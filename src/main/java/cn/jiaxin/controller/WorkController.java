package cn.jiaxin.controller;

import cn.jiaxin.domain.Tag;
import cn.jiaxin.domain.User;
import cn.jiaxin.domain.Work;
import cn.jiaxin.service.IUserService;
import cn.jiaxin.service.IWorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/work")
public class WorkController {

    @Autowired
    IWorkService workService;
    @Autowired
    IUserService userService;

    @RequestMapping("/fileUpload")
    //ajax返回json @ResponseBody //MultipartFile的值必须和表单上的名称一模一样
    public String fileUpload(MultipartFile imgFile, HttpServletRequest request, Work work,String tags){
        //文件上传位置
        String path = request.getSession().getServletContext().getRealPath("/userinfo/"+ ((User)request.getSession().getAttribute("user")).getUid() +"/");
      /*  System.out.println("**********"+path);

        System.out.println(work);
        System.out.println(imgFile);*/
        work.setUid(((User)request.getSession().getAttribute("user")).getUid());
        File file = new File(path);
        if (!file.exists()){//如果不存在
            //创建文件夹
            file.mkdirs();
        }

        String[] strings = tags.split("#");
        List<Tag> list = new ArrayList<Tag>();
        for (String string : strings) {
            if (string != null && !string.equals("")){
                Tag tag = new Tag(string);
                list.add(tag);
            }
        }


        workService.publishWork(imgFile,work,path,list);


        return "success";
    }

    @RequestMapping("/workpage")
    public ModelAndView fileUpload(HttpServletRequest request, String wid){
        ModelAndView mv = new ModelAndView();
        int id = Integer.parseInt(wid);
        //int id = Integer.parseInt(request.getParameter("wid"));
        Work work = workService.workpage(id);
        User author = userService.findUserByUid(String.valueOf(work.getUid()));
        System.out.println(work);
        mv.addObject("work",work);
        mv.addObject("author",author);
        mv.setViewName("workpage");
        return mv;
    }

}
