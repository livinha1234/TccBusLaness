package br.com.Tcc.TccBusLanes.resource;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.HorariosRepository;
import br.com.Tcc.TccBusLanes.repository.UsuarioRepository;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/usuarios")
@CrossOrigin("*")
public class UsuarioResource {
    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/todos")
    public List<Usuario> listarTodosUsuarios(){
        return usuarioRepository.findAll();
    }

    @GetMapping()
    public Page<Usuario> pesquisar(UsuarioFilter usuarioFilter, Pageable pageable) {
        return usuarioRepository.filtrar(usuarioFilter, pageable);
    }
}
