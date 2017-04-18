package com.janani.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.janani.model.User;
import com.janani.repository.UserRepository;
import com.janani.util.EmailUtil;

@Controller
@RequestMapping("users")
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private EmailUtil emailUtil;

	@GetMapping("/register")
	public String showRegistration() {
		return "register";
	}

	@PostMapping("/register")
	public String doRegistration(@ModelAttribute User user) throws Exception {
		try {
			userRepository.save(user);
			// Send Registration Notification Mail
			String subject = "Your account has been created";
			String body = "Welcome to Revature ! You can login to your account !";
			emailUtil.send(user.getEmail(), subject, body);
			return "login";
		} catch (Exception e) {
			return "register";
		}

	}

	@GetMapping("/login")
	public String showLogin() {
		return "login";
	}

	@PostMapping("/login")
	public String dologin(@ModelAttribute User user) {
		User userObj = userRepository.login(user.getEmail(), user.getPassword());
		if (userObj != null) {
			return "book-list";
		} else {
			return "login";
		}
	}

}
