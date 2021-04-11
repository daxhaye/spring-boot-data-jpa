package com.bolsadeideas.springboot.app.model.services;

import com.bolsadeideas.springboot.app.model.dao.IUsuarioDao;
import com.bolsadeideas.springboot.app.model.entity.Role;
import com.bolsadeideas.springboot.app.model.entity.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("jpaUserDetailsService")
public class JpaUserDetailsService implements UserDetailsService {

    @Autowired
    private IUsuarioDao usuarioDao;

    private Logger logger= LoggerFactory.getLogger(JpaUserDetailsService.class);

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Usuario usuario = usuarioDao.findByUsername(username);

        if(usuario == null) {
            logger.error("Error login: no existe el usuario '" + username + "'");
            throw new UsernameNotFoundException("Usuario " + username + "no exite en el sistema!");
        }
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        for(Role role : usuario.getRoles()) {
            logger.info("Role: ".concat(role.getAuthority()));
            authorities.add(new SimpleGrantedAuthority(role.getAuthority()));
        }

        if(authorities.isEmpty()) {
            logger.error("Error en el login: usuario '" + username + "' no tiene roles asignados!");
            throw new UsernameNotFoundException("Error en el login: usuario '" + username + "' no tiene roles asignados!");
        }

        return new User(usuario.getUsername(), usuario.getPassword(), usuario.getEnabled(), true, true, true, authorities);
    }
}
