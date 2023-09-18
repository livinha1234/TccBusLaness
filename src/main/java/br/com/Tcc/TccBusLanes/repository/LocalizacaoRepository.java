package br.com.Tcc.TccBusLanes.repository;

import br.com.Tcc.TccBusLanes.model.Localizacao;
import br.com.Tcc.TccBusLanes.repository.localizacao.LocalizacaoRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LocalizacaoRepository extends JpaRepository<Localizacao, Integer>, LocalizacaoRepositoryQuery {
}
