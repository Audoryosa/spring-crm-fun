package com.audriuskumpis.crmapp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .buildSessionFactory();

        System.out.println("Connecting");
        try(Session session = factory.getCurrentSession()){
            session.beginTransaction();
            System.out.println("Done");

        } catch (Exception e){
            System.out.println("BAAD");
        }
    }
}
