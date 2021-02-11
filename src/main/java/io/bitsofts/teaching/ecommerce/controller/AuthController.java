/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.controller;

import io.bitsofts.teaching.ecommerce.entity.Account;
import io.bitsofts.teaching.ecommerce.entity.Admin;
import io.bitsofts.teaching.ecommerce.entity.Customer;
import io.bitsofts.teaching.ecommerce.entity.History;
import io.bitsofts.teaching.ecommerce.repository.AccountRepo;
import io.bitsofts.teaching.ecommerce.repository.AdminRepository;
import io.bitsofts.teaching.ecommerce.repository.CustomerRepo;
import io.bitsofts.teaching.ecommerce.repository.HistoryRepo;
import java.util.List;
import javax.servlet.http.HttpSession;
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
public class AuthController {

    public static int customerId;
    public static int resetcustomerId;
    public static String reemail;
    public static String fname;
    public static String lname;
    public static String phone;
    public static String sequques;
   

    @Autowired
    private CustomerRepo cr;

    @Autowired
    private AccountRepo ar;

    @Autowired
    private AdminRepository adminrepo;
    
    @Autowired
    HistoryRepo hr;

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signup() {
        return "signup";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/loginView")
    public String loginView() {

        return "login";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, @RequestParam("type") String type, Model m, HttpSession session) {

        if (type.equals("User")) {
            Customer c = cr.findByEmailAndPassword(email, password);

            customerId = c.getCustId();
            session.setAttribute("cnumber", customerId);
            m.addAttribute("customerId","customerId");
           
          
            
            List<Account> accounts = ar.findAllByCustId(AuthController.customerId);

            m.addAttribute("email", c.getEmail());
             session.setAttribute("email", c.getEmail());
            m.addAttribute("accounts", accounts);
           

            return "home_page";
        } else {
            
            Admin c = adminrepo.findByEmailAndPassword(email, password);
            
             List<Account> allaccounts = ar.findAll();
             
            
            // find total balance from all account 
            
            double totalBalance = 0;
            for (int i = 0; i < allaccounts.size(); i++) {
                totalBalance = totalBalance + allaccounts.get(i).getBalance();
                System.out.println("total balance-----------------"+totalBalance);
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
              
              
            return "adminhome";

        }
    }

    @RequestMapping(method = RequestMethod.GET, value = "/registration")
    public String registration(@RequestParam("fname") String fname, @RequestParam("lname") String lname, @RequestParam("password") String password, @RequestParam("email") String email, @RequestParam("phone") String phone, @RequestParam("securityquestion") String securityquestion) {

        // User Registration
        Customer c = new Customer();
        c.setEmail(email);
        c.setFirstName(fname);
        c.setLastName(lname);
        c.setPassword(password);
        c.setPhone(phone);
        c.setSecurityquestion(securityquestion);

        cr.save(c);
        return "login";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/passwordReset")
    public String resetpass() {

        return "resetpassword";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/checkpassword")
    public String passcheck(@RequestParam("email") String email, Model m) {

        // Reset password and get other data
        Customer c = cr.findByEmail(email);
        resetcustomerId = c.getCustId();
        reemail = c.getEmail();
        fname = c.getFirstName();
        lname = c.getLastName();
        phone = c.getPhone();
        sequques = c.getSecurityquestion();

        return "passwordcheck";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/resetsuccess")
    public String resetsucc(@RequestParam("password") String password, Model m) {

        // Successfulley only password reset
        Customer c = new Customer();
        c.setCustId(resetcustomerId);
        c.setEmail(reemail);
        c.setFirstName(fname);
        c.setLastName(lname);
        c.setPassword(password);
        c.setPhone(phone);
        c.setSecurityquestion(sequques);


        cr.save(c);
        customerId = c.getCustId();

        return "login";
    }

}
