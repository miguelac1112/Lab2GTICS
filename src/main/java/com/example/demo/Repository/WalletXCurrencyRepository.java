package com.example.demo.Repository;

import com.example.demo.entity.WalletHasCurrencyWallet;
import com.example.demo.entity.WalletHasCurrencyWalletId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletXCurrencyRepository extends JpaRepository<WalletHasCurrencyWallet, WalletHasCurrencyWalletId> {
}
