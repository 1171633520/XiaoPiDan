package com.yj.resume.service;

import com.yj.resume.vo.User;

import java.util.List;

public interface UserService {
    boolean addUser(User user);
    boolean updateUser(User user);
    List<User> queryUserList(User user);
    boolean deleteUser(Long id);
    boolean checkUser(String userName);
    User queryUser(Long id);
}
