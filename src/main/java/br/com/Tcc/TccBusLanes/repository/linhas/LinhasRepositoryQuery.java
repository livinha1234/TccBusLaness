package br.com.Tcc.TccBusLanes.repository.linhas;

import br.com.Tcc.TccBusLanes.model.Linhas;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.LinhasFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLinhas;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LinhasRepositoryQuery {
    public Page<ResumoLinhas> filtrar(LinhasFilter linhasFilter, Pageable pageable);
}
