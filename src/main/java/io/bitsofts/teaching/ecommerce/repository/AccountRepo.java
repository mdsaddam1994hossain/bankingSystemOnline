/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.repository;

import io.bitsofts.teaching.ecommerce.entity.Account;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface AccountRepo extends JpaRepository<Account, Integer>{

  List<Account> findAllByCustId(Integer custId);


    public Optional<Account> findByAccountNumber(Integer accountNumber);
    
   List<Account> findByAccountType(String accooutType);

 //  Account findByAccountNumber(int accountNumber);
    
    
   
   
   
}
