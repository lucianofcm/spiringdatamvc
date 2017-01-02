package com.lucweb.test;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Created by lucnote-I on 27/12/2016.
 */
public class Main {

    public static void main(String[] args) {
        EntityManagerFactory factory = Persistence.
                createEntityManagerFactory("primary");

        factory.close();
    }
}