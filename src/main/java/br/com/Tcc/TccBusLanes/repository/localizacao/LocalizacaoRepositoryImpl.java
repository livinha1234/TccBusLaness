package br.com.Tcc.TccBusLanes.repository.localizacao;

import br.com.Tcc.TccBusLanes.model.Localizacao;
import br.com.Tcc.TccBusLanes.repository.filter.LocalizacaoFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLocalizacao;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class LocalizacaoRepositoryImpl implements LocalizacaoRepositoryQuery {
    @PersistenceContext
    private EntityManager manager;
    @Override
    public Page<ResumoLocalizacao> filtrar(LocalizacaoFilter localizacaoFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<ResumoLocalizacao> criteria = builder.createQuery(ResumoLocalizacao.class);
        Root<Localizacao> root = criteria.from(Localizacao.class);

        criteria.select(builder.construct(ResumoLocalizacao.class
                ,root.get("id")
                ,root.get("transportadora")
                ,root.get("transportadora").get("transportadora")


        ));

        Predicate[] predicates = criarRestricoes(localizacaoFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        TypedQuery<ResumoLocalizacao> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(localizacaoFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(LocalizacaoFilter localizacaoFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Localizacao> root = criteria.from(Localizacao.class);

        Predicate[] predicates = criarRestricoes(localizacaoFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("localizacao")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(LocalizacaoFilter localizacaoFilter, CriteriaBuilder builder, Root<Localizacao> root) {
        List<Predicate> predicates = new ArrayList<>();
        return predicates.toArray(new Predicate[0]);
    }

}
