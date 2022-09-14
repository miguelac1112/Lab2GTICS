package com.example.demo.Repository;

import com.example.demo.Entity.Currency;
import com.example.demo.Entity.WalletHasCurrencyWallet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletXCurrencyRepository extends JpaRepository<WalletHasCurrencyWallet, Integer> {
}
