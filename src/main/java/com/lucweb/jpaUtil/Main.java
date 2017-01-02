package com.lucweb.jpaUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Created by lucnote-I on 28/12/2016.
 */
public class Main {
    private static EntityManagerFactory entityManagerFactory =
            Persistence.createEntityManagerFactory("MeuPU");

    public static void main(String[] args) throws Exception {
        EntityManager entityManager =
                entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
// faz algo
        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
