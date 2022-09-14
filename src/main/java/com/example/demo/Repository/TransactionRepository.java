package com.example.demo.Repository;

import com.example.demo.Entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TransactionRepository extends JpaRepository<Transaction, Integer> {


    @Query(value = "select * from transaction where user_iduser = ?1", nativeQuery=true)
    List<Transaction> findTransactionByIduser(Integer id);

}
