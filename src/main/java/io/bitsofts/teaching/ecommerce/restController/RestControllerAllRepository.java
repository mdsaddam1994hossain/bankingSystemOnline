/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.restController;

import io.bitsofts.teaching.ecommerce.entity.Account;
import io.bitsofts.teaching.ecommerce.entity.Customer;
import io.bitsofts.teaching.ecommerce.entity.Deposit;
import io.bitsofts.teaching.ecommerce.entity.History;
import io.bitsofts.teaching.ecommerce.entity.Transfer;
import io.bitsofts.teaching.ecommerce.entity.Withdraw;
import io.bitsofts.teaching.ecommerce.repository.AccountRepo;
import io.bitsofts.teaching.ecommerce.repository.CustomerRepo;
import io.bitsofts.teaching.ecommerce.repository.DepositRepo;
import io.bitsofts.teaching.ecommerce.repository.HistoryRepo;
import io.bitsofts.teaching.ecommerce.repository.TransferRepo;
import io.bitsofts.teaching.ecommerce.repository.WithdrawRepo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author JEE
 */
@RestController
public class RestControllerAllRepository {
 
  
  @Autowired
  private CustomerRepo cr;
  
  @Autowired
  private AccountRepo ar;
  
  @Autowired
  DepositRepo dr;
  
  @Autowired
  WithdrawRepo wr;
  
  @Autowired
  TransferRepo tr;
  
  @Autowired
   HistoryRepo hr;
  
  // Customer RestController 
  
  @RequestMapping(method = RequestMethod.GET,value = "/api/customers")
  public ResponseEntity<Iterable<Customer>> getCustomers(){
      
      return new ResponseEntity<>(cr.findAll(),HttpStatus.OK);
  }
  
  @RequestMapping(method = RequestMethod.GET,value = "/api/customer")
  public ResponseEntity<Customer> getCustomer(@RequestParam(name = "custId")Integer id){
      
      return new ResponseEntity<>(cr.findByCustId(id),HttpStatus.OK);
  
  }
  
  @RequestMapping(method = RequestMethod.GET,value = "/api/customerByEmail")
  public ResponseEntity<Customer> findByEmailAndPassword(String email,String password){
      
      return new ResponseEntity<Customer>(cr.findByEmailAndPassword(email, password),HttpStatus.OK);
  
  }
  
  // insert or create a customer
  
   @PostMapping(path = "/api/customer")
    public ResponseEntity<Customer> insertCustomer(@RequestBody Customer c){
        
        cr.save(c);
        
        return new ResponseEntity<>(c,HttpStatus.OK);
    
    }
  
  // Account RestController 
  
  @GetMapping("/api/accounts")
    public ResponseEntity<List<Account>> getAllccount(){
         return new ResponseEntity<>(ar.findAll(), HttpStatus.OK);
    }
    
  @RequestMapping(method = RequestMethod.GET,value = "/api/account")
  public ResponseEntity<Account> getAccountById(@RequestParam(name = "accountNumber")int id){
      
     return new ResponseEntity<>(ar.findByAccountNumber(id),HttpStatus.OK);
  
  }
   // find all account by custId
  
  @GetMapping("/api/accountsByCustId")
    public ResponseEntity<List<Account>> getAllAccountByCustomerId(int custId){
         return new ResponseEntity<>(ar.findAllByCustId(custId), HttpStatus.OK);
    }

      // account or update Account 
    
   @PostMapping(path = "/api/updateAccount")
    public ResponseEntity<Account> updateAccount(@RequestBody Account a){
        
       try {
           ar.save(a);
       } catch (Exception e) {
           e.printStackTrace();
       }
        
        return new ResponseEntity<>(a,HttpStatus.OK);
    
    }
    
   
    
//    @PutMapping(path = "api/updateAccount")
//    public ResponseEntity<Account> updateAccount(@RequestBody Account a){
//       //   String[] updateurl = ["/api/updateAccount","/api/account"];
//       
//       try {
//           ar.save(a);
//       } catch (Exception e) {
//           e.printStackTrace();
//       }
//        
//        return new ResponseEntity<>(a,HttpStatus.OK);
//    
//    }
   
    
    
    
  // Deposit RestController 
  
  // find all deposits
  
  @GetMapping("/api/deposits")
    public ResponseEntity<List<Deposit>> getAllDeposit(){
         return new ResponseEntity<>(dr.findAll(), HttpStatus.OK);
    }
    
  @RequestMapping(method = RequestMethod.GET,value = "/api/deposit")
  public ResponseEntity<Deposit> getdepositByid(@RequestParam(name = "id")Integer id){
      
     return new ResponseEntity<>(dr.findByid(id),HttpStatus.OK);
  
  }

 
  
  // insert deposits 
  
  @PostMapping(path = "/api/deposit")
    public ResponseEntity<Deposit> depositsuccess(@RequestBody Deposit d){
        
        
         try {
             
             System.out.println("get amount-------------------"+d.getAmount()); 
           dr.save(d);
       } catch (Exception e) {
          e.printStackTrace();
       }
        return new ResponseEntity<>(d,HttpStatus.OK);
    
    }
  
  // Withdraw RestController 
  @GetMapping("/api/withdraws")
    public ResponseEntity<List<Withdraw>> getAllwithdraws(){
         return new ResponseEntity<>(wr.findAll(), HttpStatus.OK);
    }
    
  @RequestMapping(method = RequestMethod.GET,value = "/api/withdraw")
  public ResponseEntity<Withdraw> getWithdrawByid(@RequestParam(name = "id")Integer id){
      
     return new ResponseEntity<>(wr.findByid(id),HttpStatus.OK);
  
  }
  
  // Transfer RestController 
  @GetMapping("/api/transfers")
    public ResponseEntity<List<Transfer>> getAllTransfers(){
         return new ResponseEntity<>(tr.findAll(), HttpStatus.OK);
    }
    
  @RequestMapping(method = RequestMethod.GET,value = "/api/transfer")
  public ResponseEntity<Transfer> getTransferByid(@RequestParam(name = "id")Integer id){
      
     return new ResponseEntity<>(tr.findByid(id),HttpStatus.OK);
  
  }
  
   @PostMapping(path = "/api/transfer")
    public ResponseEntity<Transfer> transfer(@RequestBody Transfer t){
        
       try {
           tr.save(t);
       } catch (Exception e) {
           e.printStackTrace();
       }
        
        return new ResponseEntity<>(t,HttpStatus.OK);
    
    }
  
  // History RestController 
  
  @GetMapping("/api/historys")
    public ResponseEntity<List<History>> getAllHistorys(){
         return new ResponseEntity<>(hr.findAll(), HttpStatus.OK);
    }
    
  @RequestMapping(method = RequestMethod.GET,value = "/api/hsitory")
  public ResponseEntity<History> getHistoryByid(@RequestParam(name = "id")Integer id){
      
     return new ResponseEntity<>(hr.findByid(id),HttpStatus.OK);
  
  }
  
  
    @PostMapping(path = "/api/history")
    public ResponseEntity<History> historysuccess(@RequestBody History h){
        
        
         try {
             
             System.out.println("get amount-------------------"+h.getAmount()); 
           hr.save(h);
       } catch (Exception e) {
          e.printStackTrace();
       }
        return new ResponseEntity<>(h,HttpStatus.OK);
    
    }
  
   
}
