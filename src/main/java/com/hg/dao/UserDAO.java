package com.hg.dao;

import com.hg.entity.User;

import java.util.List;

public interface UserDAO {
    public List<User> getUsers();
    public User getUser(Integer id);
    public void save(User user);
    public void deleteUser(Integer id);
    public void updateUser(User user);
}
