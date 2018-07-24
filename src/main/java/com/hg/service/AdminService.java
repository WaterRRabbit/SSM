package com.hg.service;

import com.hg.dao.AdminDAO;
import com.hg.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminService {
    @Resource
    private AdminDAO adminDAO;
    public Admin doLogin(String username, String password) {
        return adminDAO.doLogin(username, password);
    }
}
