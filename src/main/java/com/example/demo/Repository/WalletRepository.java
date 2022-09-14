package com.example.demo.Repository;

import com.example.demo.Entity.Currency;
import com.example.demo.Entity.Wallet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletRepository extends JpaRepository<Wallet, Integer> {
}
