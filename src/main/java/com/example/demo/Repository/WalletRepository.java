package com.example.demo.Repository;

import com.example.demo.entity.Currency;
import com.example.demo.entity.Wallet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletRepository extends JpaRepository<Wallet, Integer> {
}
