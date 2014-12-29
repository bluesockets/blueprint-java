package com.signup.service;

import com.model.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * Created by bluesockets on 12/24/14.
 */
public interface UserService {

    public User getUserByUsername(String username) throws UsernameNotFoundException;
    public User createUser(User user);
}
