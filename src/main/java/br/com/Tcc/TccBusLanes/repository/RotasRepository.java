package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Rotas;
import br.com.Tcc.TccBusLanes.repository.rotas.RotasRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RotasRepository extends JpaRepository<Rotas, Integer>, RotasRepositoryQuery {
}
