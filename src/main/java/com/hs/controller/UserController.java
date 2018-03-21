package com.hs.controller;

import com.hs.domain.User;
import com.hs.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);

        return "user/index";
    }

    @RequestMapping("/form")
    public String form(Model model, @RequestParam(name = "id", required = false, defaultValue = "0") int id) {
        System.out.println(id);
        User user = new User();
        if (id > 0) user = userService.findOne(id);
        model.addAttribute("user", user);
        return "user/form";
    }
}