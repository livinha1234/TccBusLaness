package br.com.Tcc.TccBusLanes.repository.localizacao;

import br.com.Tcc.TccBusLanes.model.Localizacao;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.LocalizacaoFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLocalizacao;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LocalizacaoRepositoryQuery {
    public Page<ResumoLocalizacao> filtrar(LocalizacaoFilter localizacaoFilter, Pageable pageable);
}
