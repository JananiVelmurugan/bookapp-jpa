package com.janani.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.form.RegistrationForm;
import com.janani.model.User;
import com.janani.repository.UserRepository;
import com.janani.util.EmailUtil;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private EmailUtil emailUtil;

	public User findByEmailAndPassword(String email, String password) {

		return userRepository.findByEmailAndPassword(email, password);
	}

	public void register(RegistrationForm regUserForm) throws Exception {

		User user = userRepository.findByEmail(regUserForm.getEmail());
		System.out.println("Is email already exists? "+ user);
		if ( user != null) {
			throw new Exception ("Email already exists!!!");
		}
		User userObj = new User();
		userObj.setName(regUserForm.getName());
		userObj.setEmail(regUserForm.getEmail());
		userObj.setPassword(regUserForm.getPassword());
		userObj.setActive(true);
		
		userRepository.save(userObj);

		// Send Registration Notification Mail
		String subject = "Your account has been created";
		String body = "Welcome to Revature ! You can login to your account !";
		//emailUtil.send(user.getEmail(), subject, body);

	}

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findOne(Long id) {
		return userRepository.findOne(id);
	}

}
