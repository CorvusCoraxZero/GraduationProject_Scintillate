package cn.jiaxin.controller;

import cn.jiaxin.domain.User;
import cn.jiaxin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 账户控制器
 */
@Controller
@RequestMapping("/user")
@SessionAttributes(value = {"user"})
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/register")
    public String register(HttpServletRequest request, User user){
        user.setUserfolder(request.getSession().getServletContext().getRealPath("/userinfo/"));
        userService.registerUser(user);
        return "success";
    }

    @RequestMapping("/login")
    public String login(Model model, String email,String password){

        User user = userService.login(email,password);

        if (user != null){
            model.addAttribute("user",user);
            return "jumphome";
        }else {
            return "error";
        }
    }

    /*@RequestMapping("/subscribe")//订阅作者
    @ResponseBody
    public String subscibe(HttpServletRequest request){
        User subsciber = (User) request.getSession().getAttribute("user");
        User painter = (User)request.getAttribute("author");
        userService.subscribe(subsciber.getUid(),painter.getUid());

        return "";
    }*/
}
