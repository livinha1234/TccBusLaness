package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.usuario.UsuarioRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer>, UsuarioRepositoryQuery {
}
