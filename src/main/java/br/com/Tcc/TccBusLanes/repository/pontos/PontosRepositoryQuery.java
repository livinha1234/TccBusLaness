package br.com.Tcc.TccBusLanes.repository.pontos;

import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.PontosFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoPontos;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface PontosRepositoryQuery {
    public Page<ResumoPontos> filtrar(PontosFilter pontosFilter, Pageable pageable);
}
