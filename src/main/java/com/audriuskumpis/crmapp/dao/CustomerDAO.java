package com.audriuskumpis.crmapp.dao;

import com.audriuskumpis.crmapp.entity.Customer;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerDAO {
    public List<Customer> getCustomers();
}
