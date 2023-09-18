package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Transportadora;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.TransportadoraRepository;
import br.com.Tcc.TccBusLanes.repository.filter.TransportadoraFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/transportadora")
public class TransportadoraResource {
    @Autowired
    private TransportadoraRepository transportadoraRepository;

    @GetMapping("/todos")
    public List<Transportadora> listarTodasTransportadoras(){
        return transportadoraRepository.findAll();
    }

    @GetMapping()
    public Page<Transportadora> pesquisar(TransportadoraFilter transportadoraFilter, Pageable pageable) {
        return transportadoraRepository.filtrar(transportadoraFilter, pageable);
    }
}