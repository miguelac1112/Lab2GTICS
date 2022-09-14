package com.example.demo.controller;

import com.example.demo.Repository.*;
import com.example.demo.Entity.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping(value = "cripto")
public class Cripto {

    @Autowired
    CurrencyRepository currencyRepository;
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
        model.addAttribute("transactonList",transactionRepository.findAll());
        return "cripto/list_transactions";
    }

    @GetMapping("/new")
    public String nuevaTransaccion(Model model) {
        model.addAttribute("listaDivisas", currencyRepository.findAll());
        model.addAttribute("listaBilleteras", walletRepository.findAll());

        return "cripto/newFrm";
    }

    @PostMapping("/save")
    public String guardarTransaccion(Transaction transaction, RedirectAttributes attr) {
        System.out.println(transaction.getCurrency());
        transactionRepository.save(transaction);
        return "redirect:/principal";
    }

    @GetMapping(value="principal")
    public String principal(Model model){
        model.addAttribute("listaCriptos",currencyRepository.findAll());
        return "cripto/principal";
    }

    @GetMapping(value = "mywallet")
    public String listar(Model model, @RequestParam("id") Integer id) {
        List<Transaction> transactionbyuserList = transactionRepository.findTransactionByIduser(id);
        model.addAttribute("transactionbyuserList", transactionbyuserList);
        return "cripto/wallet";
    }

    @PostMapping("/buscaCripto")
    public String buscaCripto(@RequestParam("numeroTxID") String numeroTxID,Model model) {





        List<Transaction> listaEncontrada=transactionRepository.buscarTransaction(numeroTxID);



        model.addAttribute("listaEncontrada", listaEncontrada);
        return "cripto/EncuentraTxID";
    }


}
