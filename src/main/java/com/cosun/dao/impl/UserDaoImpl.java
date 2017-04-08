package com.cosun.dao.impl;

import org.springframework.stereotype.Repository;

import com.cosun.dao.UserDao;
import com.cosun.entities.User;
@Repository
public class UserDaoImpl extends GenericDAOImpl<User, Integer> implements UserDao {

}
