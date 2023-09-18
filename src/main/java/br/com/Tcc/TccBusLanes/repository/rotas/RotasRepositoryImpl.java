package br.com.Tcc.TccBusLanes.repository.rotas;

import br.com.Tcc.TccBusLanes.model.Horarios;
import br.com.Tcc.TccBusLanes.model.Pontos;
import br.com.Tcc.TccBusLanes.model.Rotas;
import br.com.Tcc.TccBusLanes.repository.filter.HorariosFilter;
import br.com.Tcc.TccBusLanes.repository.filter.RotasFilter;
import br.com.Tcc.TccBusLanes.repository.horarios.HorariosRepositoryQuery;
import br.com.Tcc.TccBusLanes.repository.pontos.PontosRepositoryQuery;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoHorarios;
import br.com.Tcc.TccBusLanes.repository.projections.ResumoRotas;
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

public class RotasRepositoryImpl implements RotasRepositoryQuery {
    @PersistenceContext
    private EntityManager manager;
    @Override
    public Page<ResumoRotas> filtrar(RotasFilter rotasFilter, Pageable pageable) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<ResumoRotas> criteria = builder.createQuery(ResumoRotas.class);
        Root<Rotas> root = criteria.from(Rotas.class);

        criteria.select(builder.construct(ResumoRotas.class
                ,root.get("idrotas")
                ,root.get("rotas")
                ,root.get("usuario").get("nomeusuario")
                ,root.get("usuario").get("email")
                ,root.get("usuario").get("cidade")
                ,root.get("usuario").get("endereco")


        ));

        Predicate[] predicates = criarRestricoes(rotasFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("horarios")));

        TypedQuery<ResumoRotas> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);


        return new PageImpl<>(query.getResultList(), pageable, total(rotasFilter));

    }


    private void adicionarRestricoesDePaginacao(TypedQuery<?> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(RotasFilter rotasFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Rotas> root = criteria.from(Rotas.class);

        Predicate[] predicates = criarRestricoes(rotasFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("rotas")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(RotasFilter rotasFilter, CriteriaBuilder builder, Root<Rotas> root) {
        List<Predicate> predicates = new ArrayList<>();
        return predicates.toArray(new Predicate[0]);
    }
   
}
