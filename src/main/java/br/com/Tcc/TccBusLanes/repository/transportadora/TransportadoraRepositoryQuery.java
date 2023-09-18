package br.com.Tcc.TccBusLanes.repository.transportadora;

import br.com.Tcc.TccBusLanes.model.Transportadora;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.TransportadoraFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TransportadoraRepositoryQuery {
    public Page<Transportadora> filtrar(TransportadoraFilter transportadoraFilter, Pageable pageable);
}
