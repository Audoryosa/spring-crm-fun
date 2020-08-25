package com.audriuskumpis.crmapp.service;

import com.audriuskumpis.crmapp.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    Customer getCustomer(int id);

    void delete(int id);

    List<Customer> search(String searchItem);
}
