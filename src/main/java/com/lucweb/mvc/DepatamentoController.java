package com.lucweb.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lucweb.domain.Member;

@Controller
@RequestMapping(value="/departamento")
public class DepatamentoController {
	
	 	@RequestMapping(method=RequestMethod.GET)
	    public String displaySortedMembers(Model model)
	    {
	        return "departamento";
	    }

}
