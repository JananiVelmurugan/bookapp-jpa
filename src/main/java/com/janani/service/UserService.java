package com.janani.service;

import java.util.List;

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
	
	public List<User> findAll()
	{
		return userRepository.findAll();
	}
	
	public User findOne(Long id) {
		return userRepository.findOne(id);
	}

}
