/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.Account;
import io.bitsofts.teaching.ecommerce.entity.Customer;
import io.bitsofts.teaching.ecommerce.entity.Deposit;
import io.bitsofts.teaching.ecommerce.entity.History;
import io.bitsofts.teaching.ecommerce.entity.Withdraw;
import io.bitsofts.teaching.ecommerce.repository.AccountRepo;
import io.bitsofts.teaching.ecommerce.repository.CustomerRepo;
import io.bitsofts.teaching.ecommerce.repository.DepositRepo;
import io.bitsofts.teaching.ecommerce.repository.HistoryRepo;
import io.bitsofts.teaching.ecommerce.repository.WithdrawRepo;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.SessionScope;

/**
 *
 * @author J2EE
 */
@SessionScope
@Controller
public class HomeController {

    private SessionFactory hibernateFactory;
    HttpSession session;

    @Autowired
    public HomeController(EntityManagerFactory factory) {
        if (factory.unwrap(SessionFactory.class) == null) {
            throw new NullPointerException("factory is not a hibernate factory");
        }
        this.hibernateFactory = factory.unwrap(SessionFactory.class);
    }
    int custIdForUpdate;
    String email,password,sques;
    Date date = new Date();
    @Autowired
    AccountRepo ar;

    @Autowired
    DepositRepo dr;

    @Autowired
    WithdrawRepo wr;
    
    @Autowired
    HistoryRepo hr;
    
    @Autowired
    CustomerRepo cr;

    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String home(Model m) {
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);
            
        m.addAttribute("accounts",accounts);
        
        return "home_page";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/deposited")
    public String deposit() {

        return "deposit";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/depositform")
    public String depositcal(@RequestParam("method") String method, Model m) {

        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);

        

        m.addAttribute("method", method);
        m.addAttribute("accounts", accounts);

        return "depositcal";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/depositsuccess")
    public String deposucc(@RequestParam("accountnumber") int accountNumber, @RequestParam("method") String method, @RequestParam("amount") double amount,@RequestParam("pinnumber") String pinnumber,Model m) {

        // update Account by deposit 
        if(pinnumber.equals("1234")){
        
            Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        double newbalance = oldbalance + amount;
        a.setBalance(newbalance);
        ar.save(a);
        
        //save deposit here 

        Deposit d = new Deposit();
        d.setAccountNumber(accountNumber);
        d.setAmount(amount);
        d.setDepositDate(date);
        d.setMethod(method);

        dr.save(d);
        
        //save history here 
        
        History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(method);
        h.setOperationType("Deposit");
        h.setTransectionDate(date);
        
        hr.save(h);
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);
            
        m.addAttribute("accounts",accounts);

        return "home_page";
        
        }else{
            return "error";
        }
        
    }

    @RequestMapping(method = RequestMethod.GET, value = "/withdrawo")
    public String withdraw() {

        return "withdraw";
    }
    

    @RequestMapping(method = RequestMethod.GET, value = "/withdrawfr")
    public String withdrawcal(@RequestParam("methods") String methods,Model m) {
                 
        List<Account> accountss = ar.findAllByCustId(AuthController.customerId);
         m.addAttribute("methods",methods);
         m.addAttribute("accountss",accountss);

        return "withdracal";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/withdiscount")
    public String withdrawdis(@RequestParam("accountnumber") int accountNumber, @RequestParam("method") String method, @RequestParam("amount") double amount, Model m) {

        double amounts = amount;
        double discounts = (amount/100)*1.2;
        double afterdiscount = amount - discounts;
        
        m.addAttribute("anumber",accountNumber);
        m.addAttribute("method",method);
        m.addAttribute("amounts",amount);
        m.addAttribute("discounts",discounts);
        m.addAttribute("afterdiscount",afterdiscount);
        
        return "withdrawdiscount";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/withdrawsuccess")
    public String withdrawsucc(@RequestParam("accountnumber") int accountNumber, @RequestParam("method") String method, @RequestParam("amount") double amount,@RequestParam("discount") double discount, Model m) {

        //update a Account by withdraw 
        
        Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        
        if(oldbalance < amount){
            return "error";
        }else{
        double newbalance = oldbalance - amount;
        a.setBalance(newbalance);
        ar.save(a);
        // save  withdraw Account here
        Withdraw w = new Withdraw();

        w.setAccountNumber(accountNumber);
        w.setAmount(amount);
        w.setMethod(method);
        w.setTransectionDate(date);

        wr.save(w);
        
        // save history here
        
         History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(method);
        h.setOperationType("Withdraw");
        h.setTransectionDate(date);
        h.setChargeAmount(discount);
        
        hr.save(h);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);
            
        m.addAttribute("accounts",accounts);

            System.out.println("with draw success----------------------------------------------"+amount);
        return "home_page";}
    }

    @RequestMapping(method = RequestMethod.GET, value = "/transfered")
    public String transfer() {

        return "transfer";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/transferform")
    public String transfercal(@RequestParam("methods") String methods,Model m) {

        List<Account> accountss = ar.findAllByCustId(AuthController.customerId);
         m.addAttribute("methods",methods);
         m.addAttribute("accountss",accountss);
        
        return "transfercal";
    }
    @RequestMapping(method = RequestMethod.GET, value = "transfermyaccount")
    public String transfercalmyaccount(@RequestParam("methods") String methods,Model m) {

        List<Account> accountss = ar.findAllByCustId(AuthController.customerId);
         m.addAttribute("methods",methods);
         session.setAttribute("accountss", "accountss");
         m.addAttribute("accountss",accountss);
        
        return "transfermyaccount";
    }
    
//    @RequestMapping(method = RequestMethod.GET,value = "checkpin")
//    public String checkNumber(Model m){
//          m.addAttribute("pinNumber",5540);
//        return "checkCodeNumber";
//    }
    
    
    
    @RequestMapping(method = RequestMethod.GET, value = "/transferdiscount")
    public String transferdis(@RequestParam("accountnumber") int accountNumber, @RequestParam("method") String method, @RequestParam("amount") double amount, Model m) {
//
//        double amounts = amount;
//        double discounts = (amount/100)*1.2;
//        double afterdiscount = amount - discounts;
        
        m.addAttribute("anumber",accountNumber);
        m.addAttribute("method",method);
        m.addAttribute("amounts",amount);
//        m.addAttribute("discounts",discounts);
//        m.addAttribute("afterdiscount",afterdiscount);

  m.addAttribute("pinNumber",5540);
       
//        
//        session.setAttribute("anumber", accountNumber);
//        session.setAttribute("method", method);
//        session.setAttribute("amount", amount);
//        session.setAttribute("dis", discounts);
//        session.setAttribute("afdiscount", afterdiscount);
//        
      //  return "transferdiscount";
      
       return "checkCodeNumber";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/transfercheck")
    public String transfercal(@RequestParam("accountnumber") int accountNumber, @RequestParam("method") String method, @RequestParam("amount") double amount, Model m) {

        double amounts = amount;
        double discounts = (amount/100)*1.2;
        double afterdiscount = amount - discounts;
        
        m.addAttribute("anumber",accountNumber);
        m.addAttribute("method",method);
        m.addAttribute("amounts",amount);
        m.addAttribute("discounts",discounts);
        m.addAttribute("afterdiscount",afterdiscount);

 
       
//        
//        session.setAttribute("anumber", accountNumber);
//        session.setAttribute("method", method);
//        session.setAttribute("amount", amount);
//        session.setAttribute("dis", discounts);
//        session.setAttribute("afdiscount", afterdiscount);
//        
      //  return "transferdiscount";
      
       return "transferdiscount";
    }
    
    
    
    @RequestMapping(method = RequestMethod.GET, value = "/transfersuccess")
    public String transfersuc(@RequestParam("accountnumber") int accountNumber,@RequestParam("method") String method, @RequestParam("amount") double amount,@RequestParam("discount") double discount, Model m) {

       Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        if(oldbalance < amount){
            return "error";
        }else{
        double newbalance = oldbalance - amount;
        a.setBalance(newbalance);
        ar.save(a);
        
//        
        
        // save history here
        
         History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(method);
        h.setOperationType("Transfer");
        h.setTransectionDate(date);
        h.setChargeAmount(discount);
        hr.save(h);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);  
       
    
        m.addAttribute("accounts",accounts);
        
        return "home_page";
        }
    }
    
    
    @RequestMapping(method = RequestMethod.GET, value = "/transfermyaccountsuccess")
    public String transfermyaccountsucces(@RequestParam("accountnumber") int accountNumber,@RequestParam("toaccountnumber") int toaccountNumber,@RequestParam("method") String method, @RequestParam("amount") double amount, Model m) {

        
        Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        if(oldbalance < amount){
            return "error";
        }else{
        double newbalance = oldbalance - amount;
        a.setBalance(newbalance);
        ar.save(a);
        
        // IF Transfer to my account 
        
        Account ta = ar.findByAccountNumber(toaccountNumber).get();
         double oldbalanc = ta.getBalance();
         double newbalancto = oldbalanc + amount;
         ta.setBalance(newbalancto);
         ar.save(ta);
            System.out.println("oldbalanc----"+oldbalanc+"---new balance------");
        
        // save history here
        
         History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(method);
        h.setOperationType("Transfer");
        h.setTransectionDate(date);
        
        hr.save(h);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);    
        m.addAttribute("accounts",accounts);
        
        return "home_page";}
    }

    
    @RequestMapping(method = RequestMethod.GET, value = "/historye")
    public String history(Model m,HttpSession session) {
        List<Account> allAccount = ar.findAllByCustId(AuthController.customerId);  
        session.setAttribute("accounts", allAccount);
        m.addAttribute("accounts",allAccount);
        return "history";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/historyshow")
    public String historysho(@RequestParam("accountNum") int accountNumber,Model m) {
        
        ArrayList<History> histories = hr.findAllByAccountNumber(accountNumber);
        
        m.addAttribute("histories",histories);
        
        return "history";
    }
    

    @RequestMapping(method = RequestMethod.GET, value = "/utilitybill")
    public String utility() {

        return "utility";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/utilityform")
    public String utilitycalcu(@RequestParam("service") String service,Model m) {

        List<Account> accountss = ar.findAllByCustId(AuthController.customerId);
         m.addAttribute("service",service);
         m.addAttribute("accountss",accountss);
         
        return "utilitycal";
    }
    
        
    @RequestMapping(method = RequestMethod.GET, value = "/utilitycharge")
    public String utilitycharg(@RequestParam("accountnumber") int accountNumber, @RequestParam("service") String service, @RequestParam("amount") double amount, Model m) {

        double amounts = amount;
        double charge = (amount/100)*0.25;
        double totalamount = amount + charge;
        
        m.addAttribute("anumber",accountNumber);
        m.addAttribute("service",service);
        m.addAttribute("amounts",amount);
        m.addAttribute("chargeAmount",charge);
        m.addAttribute("totalamount",totalamount);
        
        return "utilityCharge";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/utilitysuccess")
    public String utilitysucc(@RequestParam("accountnumber") int accountNumber, @RequestParam("service") String service, @RequestParam("totalamounts") double amount,@RequestParam("chargeamount") double chargeamount, Model m) {

        Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        if(oldbalance < amount){
            return "error";
        }else{
        double newbalance = oldbalance - amount;
        a.setBalance(newbalance);
        ar.save(a);
        
        // save history here
        
         History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(service);
        h.setOperationType("Utility Bill");
        h.setTransectionDate(date);
        h.setChargeAmount(chargeamount);
        hr.save(h);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);    
        m.addAttribute("accounts",accounts);
        
        
        return "home_page";}
    }
    @RequestMapping(method = RequestMethod.GET, value = "/mobilerecharge")
    public String mobilere() {

        return "mobile";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/mobilerechargeform")
    public String mobileform(@RequestParam("operator") String operator,Model m) {

        List<Account> accountss = ar.findAllByCustId(AuthController.customerId);
         m.addAttribute("operator",operator);
         m.addAttribute("accountss",accountss);
        
        
        return "mobilecal";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/mobilecharge")
    public String mobilecharg(@RequestParam("accountnumber") int accountNumber, @RequestParam("operator") String operator, @RequestParam("amount") double amount, Model m) {

        double amounts = amount;
        double charge = (amount/100)*0.15;
        double totalamount = amount + charge;
        
        m.addAttribute("anumber",accountNumber);
        m.addAttribute("operator",operator);
        m.addAttribute("amounts",amount);
        m.addAttribute("chargeAmount",charge);
        m.addAttribute("totalamount",totalamount);
        
        return "mobileCharge";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/mobilerechargeSuccess")
    public String mobilerechargesucc(@RequestParam("accountnumber") int accountNumber, @RequestParam("operator") String operator, @RequestParam("totalamounts") double amount, @RequestParam("chargeamount") double chargeamount, Model m) {

        Account a = ar.findByAccountNumber(accountNumber).get();
        double oldbalance = a.getBalance();
        if(oldbalance < amount){
            return "error";
        }else{
        double newbalance = oldbalance - amount;
        a.setBalance(newbalance);
        ar.save(a);
        
        // save history here
        
         History h = new History();
        h.setAccountNumber(accountNumber);
        h.setAmount(amount);
        h.setMethod(operator);
        h.setOperationType("Mobile Recharge");
        h.setTransectionDate(date);
        h.setChargeAmount(chargeamount);
        hr.save(h);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);    
        m.addAttribute("accounts",accounts);
        
        return "home_page";}
    }

    @RequestMapping(method = RequestMethod.GET, value = "/opennew")
    public String newaccount(Model m) {

        m.addAttribute("cnumber" + AuthController.customerId);

        return "createnew";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/accountcreate")
    public String addaccount(@RequestParam("password") String password, @RequestParam("accountType") String accountType, @RequestParam("balance") double balance,Model m) {

        System.out.println("account type is ---------" + accountType);
        System.out.println("account balance is ---------" + balance);
        Account a = new Account();
        a.setAccountType(accountType);
        a.setBalance(balance);
        a.setCustId(AuthController.customerId);
        a.setOpenDate(date);
        a.setPassword(password);
        System.out.println("cus account type  -----------" + accountType);
        ar.save(a);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);
            
        m.addAttribute("accounts",accounts);

        return "home_page";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/accountSettings")
    public String settinaccount(Model m) {

        Optional<Customer> c = cr.findById(AuthController.customerId);
        custIdForUpdate = c.get().getCustId();
        email = c.get().getEmail();
        password = c.get().getPassword();
        sques = c.get().getSecurityquestion();
        System.out.println("cust id -----------"+ custIdForUpdate);
        m.addAttribute("fname",c.get().getFirstName());
        m.addAttribute("lname",c.get().getLastName());
        m.addAttribute("phone",c.get().getPhone());
        

        return "accountSetting";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/updatedata")
    public String updatecustomer(@RequestParam("firstname") String firstname,@RequestParam("lastname") String lastname,@RequestParam("phone") String phone,Model m) {

        
   
       Customer c = new Customer(); 
    
      
        c.setCustId(custIdForUpdate);
        c.setEmail(email);
        c.setFirstName(firstname);
        c.setLastName(lastname);
        c.setPassword(password);
        c.setPhone(phone);
        c.setSecurityquestion(sques);
        
        cr.save(c);
        
        List<Account> accounts = ar.findAllByCustId(AuthController.customerId);
            
        m.addAttribute("accounts",accounts);

        return "home_page";
    }

}
