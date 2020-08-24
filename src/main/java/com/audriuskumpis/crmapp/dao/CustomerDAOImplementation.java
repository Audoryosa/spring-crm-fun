package com.audriuskumpis.crmapp.dao;

import java.util.List;

import com.audriuskumpis.crmapp.entity.Customer;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

@Repository
public class CustomerDAOImplementation implements CustomerDAO {

    private EntityManager entityManager;

    public CustomerDAOImplementation(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public List<Customer> getCustomers() {

        // get the current hibernate session
        Session currentSession = entityManager.unwrap(Session.class);

        // create a query
        Query<Customer> theQuery =
                currentSession.createQuery("from Customer", Customer.class);

        // execute query and get result list
        List<Customer> customers = theQuery.getResultList();

        // return the results
        return customers;
    }

}