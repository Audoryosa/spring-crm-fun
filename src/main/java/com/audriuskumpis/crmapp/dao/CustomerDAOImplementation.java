package com.audriuskumpis.crmapp.dao;

import java.util.Collections;
import java.util.List;

import com.audriuskumpis.crmapp.entity.Customer;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

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
                currentSession.createQuery("from Customer order by lastName", Customer.class);

        // execute query and get result list
        List<Customer> customers = theQuery.getResultList();

        return customers;
    }

    @Override
    public void saveCustomer(Customer customer) {
        Session currentSession = entityManager.unwrap(Session.class);
        currentSession.saveOrUpdate(customer);
    }

    @Override
    public Customer getCustomer(int id) {
        Session currentSession = entityManager.unwrap(Session.class);
        Customer customer = currentSession.get(Customer.class, id);

        return customer;
    }

    @Override
    public void delete(int id) {
        Session currentSession = entityManager.unwrap(Session.class);
        Query query = currentSession.createQuery("delete from Customer where id=:customerId");
        query.setParameter("customerId", id);
        query.executeUpdate();
    }

    @Override
    public List<Customer> search(String searchItem) {
        Session currentSession = entityManager.unwrap(Session.class);
        Query query = null;

        if (searchItem != null && !StringUtils.isEmpty(searchItem)) {
            query = currentSession.createQuery("from Customer where lower(firstName) like :name or lower(lastName) like :name", Customer.class);
            query.setParameter("name", "%" + searchItem.toLowerCase() + "%");
            List<Customer> customers = query.getResultList();
            return customers;
        } else {
            return Collections.emptyList();
        }
    }

}