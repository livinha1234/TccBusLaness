package br.com.Tcc.TccBusLanes.repository.horarios;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoHorarios;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface HorariosRepositoryQuery {
    public Page<ResumoHorarios> filtrar(HorariosFilter horariosFilter, Pageable pageable);
}
