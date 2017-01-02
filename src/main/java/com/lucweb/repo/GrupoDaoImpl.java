package com.lucweb.repo;

import com.lucweb.domain.Grupo;
import com.lucweb.domain.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
@Transactional
public class GrupoDaoImpl implements GrupoDao
{
    @Autowired
    private EntityManager em;

    public Grupo findById(Long id)
    {
        return em.find(Grupo.class, id);
    }

    public Grupo findByNome(String nome)
    {
        CriteriaBuilder builder = em.getCriteriaBuilder();
        CriteriaQuery<Grupo> criteria = builder.createQuery(Grupo.class);
        Root<Grupo> grupo = criteria.from(Grupo.class);

        /*
         * Swap criteria statements if you would like to try out type-safe criteria queries, a new
         * feature in JPA 2.0 criteria.select(member).orderBy(cb.asc(member.get(Member_.name)));
         */

        criteria.select(grupo).where(builder.equal(grupo.get("nome"), nome));
        return em.createQuery(criteria).getSingleResult();
    }

    public List<Grupo> findAllOrderedByNome()
    {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Grupo> criteria = cb.createQuery(Grupo.class);
        Root<Grupo> grupo = criteria.from(Grupo.class);

        /*
         * Swap criteria statements if you would like to try out type-safe criteria queries, a new
         * feature in JPA 2.0 criteria.select(member).orderBy(cb.asc(member.get(Member_.name)));
         */

        criteria.select(grupo).orderBy(cb.asc(grupo.get("nome")));
        return em.createQuery(criteria).getResultList();
    }

    public void register(Grupo grupo)
    {
        em.persist(grupo);
        return;
    }
}
