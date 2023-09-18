package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.repository.horarios.HorariosRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HorariosRepository extends JpaRepository <Horarios, Integer>, HorariosRepositoryQuery {
}
