package com.example.demo.controller;

import com.example.demo.Repository.UserRepository;
import com.example.demo.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class Login {
    @Autowired
    UserRepository userRepository;

    @GetMapping("")
    public String login(){
        return "login/inicio2";
    }

    @PostMapping(value="login/inicioSesion")
    public String validaLogin(@RequestParam("email") String email,
                              @RequestParam("password") String password, Model model){
        System.out.println(email);
        System.out.println(password);
        List<User> usuario = userRepository.validarCorreoContrasena(email, password);
        System.out.println(usuario.get(0).getId());
        if (usuario.isEmpty()){
            return "login/inicio2";
        }else{
            User user = usuario.get(0);
            model.addAttribute("usuario", user);
            return "cripto/principal";
        }
    }

    @GetMapping(value="principal")
    public String principal(){
        return "cripto/principal";
    }

}
