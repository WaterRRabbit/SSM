package com.hg.service;

import com.hg.dao.UserDAO;
import com.hg.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {
    @Resource
    private UserDAO userDAO;
    public List<User> getUsers() {
        return userDAO.getUsers();
    }
    public User getUser(Integer id) {
        return userDAO.getUser(id);
    }
    public void save(User user) {
        userDAO.save(user);
    }
    public void deleteUser(Integer id) {
        userDAO.deleteUser(id);
    }
    public void updateUser(User user) {
        userDAO.updateUser(user);
    }
}
