package com.janani.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.model.User;
import com.janani.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public User findByEmailAndPassword(String email, String password) {

		return userRepository.findByEmailAndPassword(email, password);
	}

	public void register(User user) {

		userRepository.save(user);
	}

}
