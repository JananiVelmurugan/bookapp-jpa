package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.janani.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	@Query(value = "select * from users where email=?1 and password=?2", nativeQuery = true)
	public User findByEmailAndPassword(String emailId, String password);
	
	@Query(value = "select * from users where email=?1", nativeQuery = true)
	public User findByEmail(String emailId);
	
	
}
