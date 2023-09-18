package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Linhas;
import br.com.Tcc.TccBusLanes.repository.linhas.LinhasRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LinhasRepository extends JpaRepository <Linhas, Integer>, LinhasRepositoryQuery {
}
