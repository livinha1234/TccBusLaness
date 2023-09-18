package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Localizacao;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.LinhasRepository;
import br.com.Tcc.TccBusLanes.repository.LocalizacaoRepository;
import br.com.Tcc.TccBusLanes.repository.filter.LocalizacaoFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLocalizacao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/localização")
public class LocalizacaoResource {
    @Autowired
    private LocalizacaoRepository localizacaoRepository;

    @GetMapping("/todos")
    public List<Localizacao> listarTodasLocalizacoes(){
        return localizacaoRepository.findAll();
    }

    @GetMapping()
    public Page<ResumoLocalizacao> pesquisar(LocalizacaoFilter localizacaoFilter, Pageable pageable) {
        return localizacaoRepository.filtrar(localizacaoFilter, pageable);
    }
}
