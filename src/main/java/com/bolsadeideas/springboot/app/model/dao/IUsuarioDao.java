package com.bolsadeideas.springboot.app.model.dao;

import com.bolsadeideas.springboot.app.model.entity.Usuario;
import org.springframework.data.repository.CrudRepository;

public interface IUsuarioDao extends CrudRepository<Usuario, Long> {

    public Usuario findByUsername(String username);

}
