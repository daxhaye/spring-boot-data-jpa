package com.bolsadeideas.springboot.app.model.dao;

import org.springframework.data.repository.CrudRepository;

import com.bolsadeideas.springboot.app.model.entity.Cliente;


public interface IClienteDao extends CrudRepository<Cliente, Long>{

	
}
