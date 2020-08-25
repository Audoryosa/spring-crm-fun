package com.audriuskumpis.crmapp.service;

import com.audriuskumpis.crmapp.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);
}
