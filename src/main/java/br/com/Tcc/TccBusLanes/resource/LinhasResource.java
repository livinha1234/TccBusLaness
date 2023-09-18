package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Linhas;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.LinhasRepository;
import br.com.Tcc.TccBusLanes.repository.filter.LinhasFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/linhas")
public class LinhasResource {
    @Autowired
    private LinhasRepository linhasRepository;

    @GetMapping("/todos")
    public List<Linhas> listarTodasLinhas(){
        return linhasRepository.findAll();
    }

    @GetMapping()
    public Page<Linhas> pesquisar(LinhasFilter linhasFilter, Pageable pageable) {
        return linhasRepository.filtrar(linhasFilter, pageable);
    }
}
