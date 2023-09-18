package br.com.Tcc.TccBusLanes.repository.transportadora;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.model.Transportadora;
import br.com.Tcc.TccBusLanes.repository.filter.TransportadoraFilter;
import org.apache.commons.lang3.StringUtils;
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

public class TransportadoraRepositoryImpl implements TransportadoraRepositoryQuery {
    @PersistenceContext
    private EntityManager manager;
    public Page<Transportadora> filtrar (TransportadoraFilter transportadoraFilter, Pageable pageable){
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Transportadora> criteria= builder.createQuery(Transportadora.class);
        Root<Transportadora> root= criteria.from(Transportadora.class);

        Predicate[] predicates = criarRestricoes(transportadoraFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("transportadora")));

        TypedQuery<Transportadora> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);

        return new PageImpl<>(query.getResultList(), pageable, total(transportadoraFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<Transportadora> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(TransportadoraFilter transportadoraFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Transportadora> root = criteria.from(Transportadora.class);

        Predicate[] predicates = criarRestricoes(transportadoraFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("transportadora")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(TransportadoraFilter transportadoraFilter, CriteriaBuilder builder, Root<Transportadora> root) {
        List<Predicate> predicates = new ArrayList<>();
        if (!StringUtils.isEmpty(transportadoraFilter.getTransportadora())) {
            predicates.add(builder.like(builder.lower(root.get("transportadora")),
                    "%" + transportadoraFilter.getTransportadora().toLowerCase() + "%"));
        }
        return predicates.toArray((new Predicate[predicates.size()]));
    }


}
