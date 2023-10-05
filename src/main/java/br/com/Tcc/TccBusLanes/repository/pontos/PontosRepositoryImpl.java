package br.com.Tcc.TccBusLanes.repository.pontos;

import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.repository.filter.PontosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoPontos;
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

public class PontosRepositoryImpl implements PontosRepositoryQuery {

    @PersistenceContext
    private EntityManager manager;
    @Override
    public Page<ResumoPontos> filtrar(PontosFilter pontosFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<ResumoPontos> criteria = builder.createQuery(ResumoPontos.class);
        Root<Pontos> root = criteria.from(Pontos.class);

        criteria.select(builder.construct(ResumoPontos.class
                ,root.get("id")
                ,root.get("pontos")
                ,root.get("linhas").get("linhas")


        ));

        Predicate[] predicates = criarRestricoes(pontosFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        TypedQuery<ResumoPontos> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(pontosFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(PontosFilter pontosFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Pontos> root = criteria.from(Pontos.class);

        Predicate[] predicates = criarRestricoes(pontosFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("pontos")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(PontosFilter pontosFilter, CriteriaBuilder builder, Root<Pontos> root) {
        List<Predicate> predicates = new ArrayList<>();
        return predicates.toArray(new Predicate[0]);
    }

}
