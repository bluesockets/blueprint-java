package com.login.service;

import java.security.MessageDigest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

@Service(value="md5Encryptor")
public class EncryptorServiceImpl implements EncrypterService {
	
	private static final Log log = LogFactory.getLog(EncryptorServiceImpl.class);

	public String encrypt(String password) {
		String hash = "";
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(password.getBytes());
			byte[] md5 = algorithm.digest();
			String tmp = "";
			for (int i = 0; i < md5.length; i++) {
				tmp = (Integer.toHexString(0xFF & md5[i]));
				if (tmp.length() == 1) {
					hash += "0" + tmp;
				} else {
					hash += tmp;
				}
			}
		} catch(Exception e) {
			log.info("problem encrypting password: " + password);
		}
		return hash;
	}
	
}
