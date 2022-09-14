package com.example.demo.Repository;

import com.example.demo.entity.Currency;
import com.example.demo.entity.WalletHasCurrencyWallet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletXCurrencyRepository extends JpaRepository<WalletHasCurrencyWallet, Integer> {
}
