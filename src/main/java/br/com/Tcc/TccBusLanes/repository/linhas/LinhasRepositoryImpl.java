package br.com.Tcc.TccBusLanes.repository.linhas;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Linhas;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.filter.LinhasFilter;
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

public class LinhasRepositoryImpl implements LinhasRepositoryQuery {
    @PersistenceContext
    private EntityManager manager;

    @Override
    public Page<ResumoLinhas> filtrar(LinhasFilter linhasFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<ResumoLinhas> criteria = builder.createQuery(ResumoLinhas.class);
        Root<Linhas> root = criteria.from(Linhas.class);

        criteria.select(builder.construct(ResumoLinhas.class
                , root.get("idlinhas")
                , root.get("linhas")
                , root.get("horarios").get("horarios")


        ));

        Predicate[] predicates = criarRestricoes(linhasFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("linhas")));

        TypedQuery<ResumoLinhas> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(linhasFilter));
    }


    private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(LinhasFilter linhasFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Linhas> root = criteria.from(Linhas.class);

        Predicate[] predicates = criarRestricoes(linhasFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("linhas")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(LinhasFilter linhasFilter, CriteriaBuilder builder, Root<Linhas> root) {
        List<Predicate> predicates = new ArrayList<>();

        if (linhasFilter.getLinhas() != null) {
            predicates.add(builder.greaterThanOrEqualTo(root.get("linhas"),
                    linhasFilter.getLinhas()));
        }

        if (linhasFilter.getLinhas() != null) {
            predicates.add(builder.lessThanOrEqualTo(root.get("linhas"),
                    linhasFilter.getLinhas()));
        }

        if (!StringUtils.isEmpty(linhasFilter.getHorarios())) {
            predicates.add(builder.like(builder.lower(root.get("horarios").get("horarios")),
                    "%" + linhasFilter.getHorarios().toLowerCase() + "%"));
        }


        return predicates.toArray((new Predicate[predicates.size()]));
    }

}



