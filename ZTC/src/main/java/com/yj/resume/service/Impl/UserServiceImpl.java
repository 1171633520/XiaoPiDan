package com.yj.resume.service.Impl;

import com.yj.resume.dao.Impl.UserDao;
import com.yj.resume.service.UserService;
import com.yj.resume.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean addUser(User user) {
        return userDao.insert(user);
    }

    @Override
    public boolean updateUser(User user) {
        return userDao.update(user);
    }

    @Override
    public List<User> queryUserList(User user) {
        return userDao.getUserInfo(user.getUserName());
    }

    @Override
    public boolean deleteUser(Long id) {
        return userDao.delete(id);
    }

    @Override
    public boolean checkUser(String userName) {
        List<User> userList = userDao.checkUser(userName);
        return null != userList && userList.size() > 0 ? false : true ;
    }

    @Override
    public User queryUser(Long id) {
        List<User> userList = userDao.getUserInfo(id);
        return userList.get(0);
    }
}
