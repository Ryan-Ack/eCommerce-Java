package com.ryan.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryan.javaproject.models.User;
import com.ryan.javaproject.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
//	@Autowired replaces the next two lines
//	private final UserRepository userRepository;
//  public UserService(UserRepository userRepo) {this.userRepository = userRepo;}
    
    // register user and hash their password
    public User registerUser(User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepository.save(user);
    }
    
    //find all users
    public List<User> allUsers(){
		return userRepository.findAll();
	}
    
    
    // find user by email
    public User findByEmail(String email) {return userRepository.findByEmail(email);}
    
    
//    //find user by name
//    public User findByName(String name) {return userRepository.findByName(name);}
    
    // find user by id
    
    public User findUserById(Long id) {
    	Optional<User> u = userRepository.findById(id);
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
    
    // authenticate user
    public boolean authenticateUser(String email, String password) {
        // first find the user by email
        User user = userRepository.findByEmail(email);
        // if we can't find it by email, return false
        if(user == null) {
            return false;
        } else {
            // if the passwords match, return true, else, return false
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }
}