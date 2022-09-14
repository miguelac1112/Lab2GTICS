package com.example.demo.Entity;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class WalletHasCurrencyWalletId implements Serializable {
    private static final long serialVersionUID = -3551843203718641094L;
    @Column(name = "wallet_idwallet", nullable = false)
    private Integer walletIdwallet;

    @Column(name = "currency_idcurrency", nullable = false)
    private Integer currencyIdcurrency;

    public Integer getWalletIdwallet() {
        return walletIdwallet;
    }

    public void setWalletIdwallet(Integer walletIdwallet) {
        this.walletIdwallet = walletIdwallet;
    }

    public Integer getCurrencyIdcurrency() {
        return currencyIdcurrency;
    }

    public void setCurrencyIdcurrency(Integer currencyIdcurrency) {
        this.currencyIdcurrency = currencyIdcurrency;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        WalletHasCurrencyWalletId entity = (WalletHasCurrencyWalletId) o;
        return Objects.equals(this.currencyIdcurrency, entity.currencyIdcurrency) &&
                Objects.equals(this.walletIdwallet, entity.walletIdwallet);
    }

    @Override
    public int hashCode() {
        return Objects.hash(currencyIdcurrency, walletIdwallet);
    }

}