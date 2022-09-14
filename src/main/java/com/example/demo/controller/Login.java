package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Login {

    @GetMapping("")
    public String login(){
        return "login/inicio2";
    }

    @PostMapping(value="login/inicioSesion")
    public String validaLogin(){

        return "cripto/principal";
    }

}
