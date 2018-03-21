package com.hs.service.impl;

import com.hs.domain.User;
import com.hs.repository.UserRepository;
import com.hs.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserRepository userRepository;

    public void save(User user) {

    }
}