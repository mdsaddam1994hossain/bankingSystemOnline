/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.Account;
import io.bitsofts.teaching.ecommerce.entity.Customer;
import io.bitsofts.teaching.ecommerce.entity.History;
import io.bitsofts.teaching.ecommerce.repository.AccountRepo;
import io.bitsofts.teaching.ecommerce.repository.CustomerRepo;
import io.bitsofts.teaching.ecommerce.repository.HistoryRepo;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



/**
 *
 * @author User
 */
@Controller
public class AdminController {
    
    @Autowired
    AccountRepo ar;
    
    @Autowired
    HistoryRepo hr;
    
    @Autowired
    CustomerRepo cr;
    
    @RequestMapping(method = RequestMethod.GET, value = "/adminpages")
    public String adminpag(Model m) {
        
        
        List<Account> allaccounts = ar.findAll();
             
            
            // find total balance from all account 
            
            double totalBalance = 0;
            for (int i = 0; i < allaccounts.size(); i++) {
                totalBalance = totalBalance + allaccounts.get(i).getBalance();
            //    System.out.println("total balance-----------------"+totalBalance);
            }
            
            // find total revenue
            
             List<History> allhistory = hr.findAll();
            double totalrevenue = 0;
            for (int i = 0; i < allhistory.size(); i++) {
                totalrevenue = totalrevenue + allhistory.get(i).getChargeAmount();
               
            }
            
             List<Account> acurrent = ar.findByAccountType("current Account");
             List<Account> afixed = ar.findByAccountType("fixed Account");
             List<Account> asaving = ar.findByAccountType("saving Account");
             
             // show data in admin dashboard
             
              m.addAttribute("totalBalance", totalBalance);
              m.addAttribute("totalrevenue", totalrevenue);
              m.addAttribute("allaccount", allaccounts.size());
              m.addAttribute("acurrent", acurrent.size());
              m.addAttribute("afixed", afixed.size());
              m.addAttribute("asaving", asaving.size());
              
              // hello mamunur rashid
              //hello kanchon 
              
            return "adminhome";
    }
    
    @RequestMapping(method = RequestMethod.GET,value = "/custom")
    public String customer(Model m){
        
        List<Customer> allCustomer = (List<Customer>) cr.findAll();
        m.addAttribute("allCustomer",allCustomer);
        return "allCustomer";
    }
    @RequestMapping(method = RequestMethod.GET,value = "/allaccount")
    public String adminaccount(Model m){
        List<Account> allAccounts = ar.findAll();
        
        m.addAttribute("allAccounts",allAccounts);
        
        
        return "allAccount";
    }
//    @RequestMapping(method = RequestMethod.GET,value = "/searchAcccount")
//    public String searchAccount(@RequestParam("accountNumber") int accountNumber, Model m){
//        
//        Account a = ar.findByAccountNumber(accountNumber).get();
//        
//        m.addAttribute("account",a);
//        
//        
//        return "allAccount";
//    }
    @RequestMapping(method = RequestMethod.GET,value = "/adminLogOut")
    public String logout(){
        
        
        
        return "login";
    }
    
    @RequestMapping(method = RequestMethod.GET,value = "/incomesource")
    public String sourceincome(Model m){
        
        List<History> allHistory = hr.findAll();
        
        m.addAttribute("allhistory",allHistory);
        
        
        return "incomeSource";
    }
}
