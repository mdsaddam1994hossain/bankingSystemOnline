/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.repository;

import io.bitsofts.teaching.ecommerce.entity.Customer;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface CustomerRepo extends CrudRepository<Customer, Integer>{

    Customer findByEmailAndPassword(String email,String password);
//    @Override
//    public <S extends Customer> S save(S s);

    @Override
    public Optional<Customer> findById(Integer custId);
    
    Customer findByEmail(String email);

    public void save(Optional<Customer> c);
    
}
