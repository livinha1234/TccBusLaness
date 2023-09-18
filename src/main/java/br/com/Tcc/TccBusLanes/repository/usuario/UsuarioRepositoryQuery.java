package br.com.Tcc.TccBusLanes.repository.usuario;

import br.com.Tcc.TccBusLanes.model.Transportadora;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.TransportadoraFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UsuarioRepositoryQuery {
    public Page<Usuario> filtrar(UsuarioFilter usuarioFilter, Pageable pageable);
}
