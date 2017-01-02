package com.lucweb.repo;

import com.lucweb.domain.Grupo;
import com.lucweb.domain.Member;

import java.util.List;

public interface GrupoDao
{
    public Grupo findById(Long id);

    public Grupo findByNome(String email);

    public List<Grupo> findAllOrderedByNome();

    public void register(Grupo grupo);
}
