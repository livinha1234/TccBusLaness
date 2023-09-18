package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Rotas;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.RotasRepository;
import br.com.Tcc.TccBusLanes.repository.UsuarioRepository;
import br.com.Tcc.TccBusLanes.repository.filter.RotasFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoRotas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/rotas")
public class RotasResource {
    @Autowired
    private RotasRepository rotasRepository;

    @GetMapping("/todos")
    public List<Rotas> listarTodasRotas(){
        return rotasRepository.findAll();
    }

    @GetMapping()
    public Page<ResumoRotas> pesquisar(RotasFilter rotasFilter, Pageable pageable) {
        return rotasRepository.filtrar(rotasFilter, pageable);
    }
}
