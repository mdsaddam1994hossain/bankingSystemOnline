/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.repository;

import io.bitsofts.teaching.ecommerce.entity.History;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface HistoryRepo extends JpaRepository<History, Integer>{
    
    ArrayList<History> findAllByAccountNumber(Integer accountNumber);
    History findByid(Integer id);
//  
//    @Query(nativeQuery = true, value="SELECT * FROM abbank.history where account_number = ? and transection_date between ? and ? ")
//    ArrayList<History> findBy (int accountNumber,Date transectionDate,Date transectionDate);
}
