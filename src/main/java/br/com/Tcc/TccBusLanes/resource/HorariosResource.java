package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoHorarios;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/horarios")
public class HorariosResource {
    @Autowired
    private HorariosRepository horariosRepository;

    @GetMapping("/todos")
    public List<Horarios> listarTodosHorarios(){
        return horariosRepository.findAll();
    }

    @GetMapping()
    public Page<ResumoHorarios> pesquisar(HorariosFilter horariosFilter, Pageable pageable) {
        return horariosRepository.filtrar(horariosFilter, pageable);
    }

}
