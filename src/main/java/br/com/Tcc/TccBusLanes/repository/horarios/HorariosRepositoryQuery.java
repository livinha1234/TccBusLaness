package br.com.Tcc.TccBusLanes.repository.horarios;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLinhas;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface HorariosRepositoryQuery {
    public Page<Horarios> filtrar(HorariosFilter horariosFilter, Pageable pageable);
}
