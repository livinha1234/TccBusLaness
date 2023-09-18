package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Transportadora;
import br.com.Tcc.TccBusLanes.repository.transportadora.TransportadoraRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TransportadoraRepository extends JpaRepository<Transportadora, Integer>, TransportadoraRepositoryQuery {
}
