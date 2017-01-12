package com.lucweb.repo;

import java.util.List;

import com.lucweb.domain.Member;
import com.lucweb.negocio.SpringMvcException;

public interface MemberDao
{
    public Member findById(Long id);

    public Member findByEmail(String email);

    public List<Member> findAllOrderedByName();

    public Member carregaMembroEgrupos(Long id) throws SpringMvcException;

    public void register(Member member);
}
