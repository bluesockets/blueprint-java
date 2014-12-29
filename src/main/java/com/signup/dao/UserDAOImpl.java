package com.signup.dao;


import com.model.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl extends BaseLoginDAO implements UserDAO {

	public static Log log = LogFactory.getLog(UserDAOImpl.class);

	@Override
	public User getUserByUsername(String username) throws UsernameNotFoundException {
		try {

			Query query = getSession().getNamedQuery("user.getUserByUsername");
			query.setParameter("username", username);

			User user = (User) query.uniqueResult();
			if (user == null) {
				log.debug("no user found with user name: '" + username + "'");
			}

			return user;

		} catch (Exception e) {
			log.error(e.getMessage());
		}

		throw new UsernameNotFoundException("No user Found");
	}

	@Override
	public User createUser(User user) {
		return (User) getSession().merge(user);
	}

}