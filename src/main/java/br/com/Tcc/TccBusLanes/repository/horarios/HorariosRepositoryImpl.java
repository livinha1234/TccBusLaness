package br.com.Tcc.TccBusLanes.repository.horarios;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoLinhas;
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

public class HorariosRepositoryImpl implements HorariosRepositoryQuery {
    @PersistenceContext
    private EntityManager manager;

    public Page<Horarios> filtrar(HorariosFilter horariosFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Horarios> criteria = builder.createQuery(Horarios.class);
        Root<Horarios> root = criteria.from(Horarios.class);

        Predicate[] predicates = criarRestricoes(horariosFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        TypedQuery<Horarios> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(horariosFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<Horarios> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(HorariosFilter horariosFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Horarios> root = criteria.from(Horarios.class);

        Predicate[] predicates = criarRestricoes(horariosFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(HorariosFilter horariosFilter, CriteriaBuilder builder, Root<Horarios> root) {
        List<Predicate> predicates = new ArrayList<>();

        if (!StringUtils.isEmpty(horariosFilter.getHorarios())) {
            predicates.add(builder.like(builder.lower(root.get("horarios")),
                    "%" + horariosFilter.getHorarios().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(horariosFilter.getHorarios())) {
            predicates.add(builder.like(builder.lower(root.get("semana")),
                    "%" + horariosFilter.getHorarios().toLowerCase() + "%"));
        }


            return predicates.toArray((new Predicate[predicates.size()]));
    }

  
}
