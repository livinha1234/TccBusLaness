package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.repository.pontos.PontosRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PontosRepository extends JpaRepository<Pontos, Integer>, PontosRepositoryQuery {
}
