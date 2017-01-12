package com.lucweb.negocio;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by lucnote-I on 03/01/2017.
 */
@ResponseStatus(value= HttpStatus.NOT_FOUND, reason="Membro/Grupo não encontrado")  // 404
public class OrderNotFoundException extends RuntimeException {
    // ...
}
