package com.cosun.service.impl;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosun.dao.UserDao;
import com.cosun.entities.User;
import com.cosun.service.RedisService;
import com.cosun.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
    private RedisService redisService;
	@Autowired
	private UserDao userDao;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    //public static final String REDIS_KEY = "TOKEN_";
    
	@Override
	public String doLogin(String password, String displayName) {
		User user = new User();
		user.setDisplayName(displayName);
		user.setPassword(password);
		String hql="from User user where user.displayName=? and user.password =? ";
		List<User> list=null;
		try {
			list = userDao.findByHQL(hql,displayName,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (null!=list) {
			//登陆成功，生成token，将用户数据保存在redis
	        String token = DigestUtils.md5Hex(displayName + System.currentTimeMillis());
	        try {
				this.redisService.set("TOKEN_" + token, MAPPER.writeValueAsString(list.get(0)), 60 * 60 * 24);
				return token;
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}

    @Override
    public User queryUserByToken(String token) {
        try {
            //String key = REDIS_KEY + token;
            String jsonData = this.redisService.get(token);
            if (StringUtils.isEmpty(jsonData)) {
                return null;
            }
            // 用户处于活跃状态，刷新生存时间
            this.redisService.expire(token, 60 * 60 * 24);
            return MAPPER.readValue(jsonData, User.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

	@Override
	public User loginnew(User user, String jsessionId) {
		String hql="from User user where user.username=? and user.password =? ";
		List<User> list=null;
		try {
			list = userDao.findByHQL(hql,user.getUsername(),user.getPassword());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (list.size()>0) {
			//登陆成功，将用户数据保存在redis
	        try {
				this.redisService.set(jsessionId, MAPPER.writeValueAsString(list.get(0)), 60 * 60 * 24);
				return list.get(0);
	        } catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public Long delUserByToken(String jsessionId) {
		return this.redisService.del(jsessionId);
	}

}
