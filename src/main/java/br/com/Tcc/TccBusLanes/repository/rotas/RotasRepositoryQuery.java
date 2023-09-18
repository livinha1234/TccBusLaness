package br.com.Tcc.TccBusLanes.repository.rotas;

import br.com.Tcc.TccBusLanes.model.Rotas;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.RotasFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoRotas;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface RotasRepositoryQuery {
    public Page<ResumoRotas> filtrar(RotasFilter rotasFilter, Pageable pageable);
}
