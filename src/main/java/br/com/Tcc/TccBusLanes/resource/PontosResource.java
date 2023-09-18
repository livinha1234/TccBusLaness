package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.PontosRepository;
import br.com.Tcc.TccBusLanes.repository.filter.PontosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoPontos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/pontos")
public class PontosResource {
    @Autowired
    private PontosRepository pontosRepository;

    @GetMapping("/todos")
    public List<Pontos> listarTodosPontos(){
        return pontosRepository.findAll();
    }

    @GetMapping()
    public Page<ResumoPontos> pesquisar(PontosFilter pontosFilter, Pageable pageable) {
        return pontosRepository.filtrar(pontosFilter, pageable);
    }
}
