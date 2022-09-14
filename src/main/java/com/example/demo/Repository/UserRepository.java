package com.example.demo.Repository;


import com.example.demo.Entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(value = "select * from user where email=?1 and password=?2", nativeQuery = true)
    List<User> validarCorreoContrasena(String email, String contrasena);



}
