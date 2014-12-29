package com.signup.service;

import com.signup.dao.UserDAO;
import com.model.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by bluesockets on 12/24/14.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    private static final Log log = LogFactory.getLog(UserServiceImpl.class);

    @Autowired protected UserDAO userDAO;

    @Override
    public User getUserByUsername(String username) throws UsernameNotFoundException {
        return userDAO.getUserByUsername(username);
    }

    @Override
    public User createUser(User user) {
        return userDAO.createUser(user);
    }
}
