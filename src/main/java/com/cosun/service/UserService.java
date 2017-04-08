package com.cosun.service;

import com.cosun.entities.User;

public interface UserService {

	String doLogin(String password, String displayName);

	User queryUserByToken(String token);

	User loginnew(User user, String jsessionId);

	Long delUserByToken(String jsessionId);

	
}
