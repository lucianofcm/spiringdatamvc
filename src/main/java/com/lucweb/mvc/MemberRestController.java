package com.lucweb.mvc;

import java.util.List;

import com.lucweb.domain.Member;
import com.lucweb.negocio.OrderNotFoundException;
import com.lucweb.negocio.SpringMvcException;
import com.lucweb.repo.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.persistence.NoResultException;
import javax.persistence.criteria.Order;

@Controller
@RequestMapping("/rest/members")
public class MemberRestController {
    @Autowired
    private MemberDao memberDao;

    @RequestMapping(method = RequestMethod.GET, produces = "application/json")
    public
    @ResponseBody
    List<Member> listAllMembers() {
        return memberDao.findAllOrderedByName();
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = "application/json")
    @ExceptionHandler(OrderNotFoundException.class)
    public @ResponseBody Member lookupMemberById(@PathVariable("id") Long id) throws SpringMvcException {

            return memberDao.carregaMembroEgrupos(id);


    }
}
