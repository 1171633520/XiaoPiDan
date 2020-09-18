package com.yj.resume.controller;

import com.yj.resume.response.Result;
import com.yj.resume.service.UserService;
import com.yj.resume.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "user/user1";
    }

    /**
     * 查询用户列表
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/select", method = RequestMethod.GET)
    @ResponseBody //如果需要将Object转换为json,需要加入@ResponseBody
    public List queryInfo(User user) {
        List<User> list = userService.queryUserList(user);
        return list;
    }

    @RequestMapping(value = "/insert/index", method = RequestMethod.GET)
    public String indexInsert() {
        return "user/insert";
    }

    /**
     * 新增用户
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(User user) {
        boolean flag = userService.addUser(user);
        return "redirect:user/index";
    }

    @RequestMapping(value = "/check", method = RequestMethod.GET)
    @ResponseBody
    public Result checkUser(String userName) {
        Result result = new Result();
        boolean flag = userService.checkUser(userName);
        result.setCode(200);
        result.setSuccess(flag);
        return result;
    }


    /**
     * 新增用户
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public Result update(User user) {
        Result result = new Result();
        boolean flag = userService.updateUser(user);
        result.setCode(200);
        result.setSuccess(flag);
        return result;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable Long id, ModelMap model) {
        User user = userService.queryUser(id);
        model.put("user", user);
        return "user/update";
    }

    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Result delete(@PathVariable Long id) {
        Result result = new Result();
        boolean flag = userService.deleteUser(id);
        result.setCode(200);
        result.setSuccess(flag);
        return result;
    }
}
