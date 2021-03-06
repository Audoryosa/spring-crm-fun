package com.audriuskumpis.crmapp.dao;

import com.audriuskumpis.crmapp.entity.Customer;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerDAO {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    Customer getCustomer(int id);

    void delete(int id);

    List<Customer> search(String searchItem);
}
