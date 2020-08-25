package com.audriuskumpis.crmapp.controller;

import java.util.List;

import com.audriuskumpis.crmapp.entity.Customer;
import com.audriuskumpis.crmapp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listCustomers(Model theModel) {
        List<Customer> theCustomers = customerService.getCustomers();
        theModel.addAttribute("customers", theCustomers);

        return "list-customers";
    }

    @RequestMapping(value = "/showAddCustomerForm", method = RequestMethod.GET)
    public String showAddForm(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);

        return "customer-form";
    }

    @RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
    public String saveCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.saveCustomer(customer);

        return "redirect:/customer/list";
    }

}
