package com.hg.dao;

import com.hg.entity.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminDAO {
    public Admin doLogin(@Param("username") String username, @Param("password") String password);
}
