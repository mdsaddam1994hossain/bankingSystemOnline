/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.restController;

import io.bitsofts.teaching.ecommerce.entity.Account;
import io.bitsofts.teaching.ecommerce.entity.Customer;
import io.bitsofts.teaching.ecommerce.repository.AccountRepo;
import io.bitsofts.teaching.ecommerce.repository.CustomerRepo;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author JEE
 */
@RestController
public class CustomerController {
 
//  @Autowired
//    private CustomerRepo cr;
  @Autowired
  private AccountRepo ar;
  
//  @RequestMapping(method = RequestMethod.GET,value = "/api/customers")
//  public ResponseEntity<Iterable<Customer>> getCustomers(){
//      
//      return new ResponseEntity<>(cr.findAll(),HttpStatus.OK);
//  
//  }
  
  //  @GetMapping("/api/accounts")
//    @RequestMapping(method = RequestMethod.GET,path = "/api/accounts")
  @GetMapping("/api/accounts")
    public ResponseEntity<List<Account>> getAllccount(){
         return new ResponseEntity<>(ar.findAll(), HttpStatus.OK);
    }
  
//   @RequestMapping(method = RequestMethod.GET,value = "/api/customers")
//  public ResponseEntity<Customer> getCustomer(){
//      
//      return new ResponseEntity<>(cr.findAllById(),HttpStatus.OK);
//  
//  }
}
