package com.hg.controller;

import com.hg.entity.Admin;
import com.hg.entity.User;
import com.hg.service.AdminService;
import com.hg.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/user")
public class Control {
    @Resource
    private UserService userService;
    @Resource
    private AdminService adminService;
    private Admin admin = null;

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    private String doLogin(String username, String password){
        admin = adminService.doLogin(username, password);
        if(admin!=null){
            return "redirect:main";
        }else{
            return "redirect:login";
        }
    }

    @RequestMapping(value = "/login")
    private String login(){
        return "login";
    }

    @RequestMapping(value = "/main")
    private String main(Model model){
        if(admin!=null){
            model.addAttribute("users",this.userService.getUsers());
            return "main";
        }else{
            return "redirect:login";
        }
    }

    @RequestMapping(value = "/add")
    private String add() {
        if(admin!=null){
            return "add";
        }else{
            return "redirect:login";
        }
    }

    @RequestMapping(value = "/doadd")
    private String doAdd(@ModelAttribute User user) {
        userService.save(user);
        return "redirect:add";
    }

    @RequestMapping(value = "/deleteUserById")
    private String deleteUserById(@RequestParam Integer id) {
        userService.deleteUser(id);
        return "redirect:main";
    }

    @RequestMapping(value = "/update")
    private String update(@RequestParam Integer id, Model model) {
        model.addAttribute("user", this.userService.getUser(id));
        return "update";
    }

    @RequestMapping(value = "/doupdate")
    private String doUpdate(@ModelAttribute User user) {
        userService.updateUser(user);
        return "redirect:main";
    }
}
