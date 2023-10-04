package br.com.Tcc.TccBusLanes.repository.horarios;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoHorarios;
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

    @Override
    public Page<ResumoHorarios> filtrar(HorariosFilter horariosFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<ResumoHorarios> criteria = builder.createQuery(ResumoHorarios.class);
        Root<Horarios> root = criteria.from(Horarios.class);

        criteria.select(builder.construct(ResumoHorarios.class
                ,root.get("idhorarios")
                ,root.get("horarios")
                ,root.get("semana")
                ,root.get("linhas").get("linhas")


        ));

        Predicate[] predicates = criarRestricoes(horariosFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        TypedQuery<ResumoHorarios> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(horariosFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
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

        if(horariosFilter.getHorarios() != null){
            predicates.add(builder.greaterThanOrEqualTo(root.get("horarios"),
                    horariosFilter.getHorarios()));
        }
        if(horariosFilter.getHorarios() != null){
            predicates.add(builder.lessThanOrEqualTo(root.get("horarios"),
                   horariosFilter.getHorarios()));
        }

        if (!StringUtils.isEmpty(horariosFilter.getLinhas())) {
            predicates.add(builder.like(builder.lower(root.get("linhas").get("linhas")),
                    "%" + horariosFilter.getLinhas().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(horariosFilter.getSemana())) {
            predicates.add(builder.like(builder.lower(root.get("semana")),
                    "%" + horariosFilter.getSemana().toLowerCase() + "%"));
        }


            return predicates.toArray((new Predicate[predicates.size()]));
    }

  
}
