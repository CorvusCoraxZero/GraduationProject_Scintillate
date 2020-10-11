package cn.jiaxin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 账户控制器
 */
@Controller
@RequestMapping("/account")
public class AccountController {

   /* @Autowired
    private IAccountService accountService;*/

    @RequestMapping("/testFindAll")
    public String findAll(Model model){
       /* System.out.println("表现层查询所有的账户信息");
        List<Account> list = accountService.findAll();
        model.addAttribute("list",list);
        return "list";*/
        System.out.println("123456");
        return "success";
    }

    /*@RequestMapping("/save")
    public void save(Account account, HttpServletResponse response,HttpServletRequest request) throws IOException {
        System.out.println("表现层调用保存方法");
        accountService.saveAccount(account);
        response.sendRedirect(request.getContextPath()+"/account/testFindAll");
        return ;
    }*/
}
