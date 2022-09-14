package com.example.demo.controller;

import com.example.demo.Repository.*;
import com.example.demo.entity.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "cripto")
public class Cripto {

    @Autowired CurrencyRepository currencyRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    WalletRepository walletRepository;
    @Autowired
    WalletXCurrencyRepository walletXCurrencyRepository;
    @Autowired
    TransactionRepository transactionRepository;


    @GetMapping(value = "list_transactions")
    public String listar(Model model){
        List<Transaction> transactionList = transactionRepository.findAll();
        model.addAttribute("transactonList",transactionList);
        return "cripto/list_transactions";
    }
}
