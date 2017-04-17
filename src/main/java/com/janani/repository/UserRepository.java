package com.janani.repository;
 
import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
