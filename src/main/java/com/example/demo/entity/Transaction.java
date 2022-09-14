package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transaction")
public class Transaction {
    @Id
    @Column(name = "idtransaction", nullable = false)
    private Integer id;

    @Column(name = "description", length = 45)
    private String description;

    @Column(name = "tx_id", nullable = false, length = 80)
    private String txId;

    @Column(name = "amount", nullable = false)
    private Double amount;

    @Column(name = "neetwork_fee", nullable = false)
    private Double neetworkFee;

    @Column(name = "block", nullable = false)
    private Integer block;

    @Column(name = "status", nullable = false, length = 45)
    private String status;

    @Column(name = "currency", nullable = false, length = 45)
    private String currency;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTxId() {
        return txId;
    }

    public void setTxId(String txId) {
        this.txId = txId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getNeetworkFee() {
        return neetworkFee;
    }

    public void setNeetworkFee(Double neetworkFee) {
        this.neetworkFee = neetworkFee;
    }

    public Integer getBlock() {
        return block;
    }

    public void setBlock(Integer block) {
        this.block = block;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

}