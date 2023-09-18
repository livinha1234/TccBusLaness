package br.com.Tcc.TccBusLanes.repository.usuario;

import br.com.Tcc.TccBusLanes.model.Linhas;
import br.com.Tcc.TccBusLanes.model.Usuario;
import br.com.Tcc.TccBusLanes.repository.filter.LinhasFilter;
import br.com.Tcc.TccBusLanes.repository.filter.UsuarioFilter;
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

public class UsuarioRepositoryImpl implements UsuarioRepositoryQuery{
    @PersistenceContext
    private EntityManager manager;
    public Page<Usuario> filtrar (UsuarioFilter usuarioFilter, Pageable pageable){
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Usuario> criteria= builder.createQuery(Usuario.class);
        Root<Usuario> root= criteria.from(Usuario.class);

        Predicate[] predicates = criarRestricoes(usuarioFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("nomeusuario")));

        TypedQuery<Usuario> query = manager.createQuery(criteria);
        adicionarRestricoesDePaginacao(query, pageable);

        return new PageImpl<>(query.getResultList(), pageable, total(usuarioFilter));

    }

    private void adicionarRestricoesDePaginacao(TypedQuery<Usuario> query, Pageable pageable) {
        int paginaAtual = pageable.getPageNumber();
        int totalRegistrosPorPagina = pageable.getPageSize();
        int primeiroregistroDaPagina = paginaAtual * totalRegistrosPorPagina;

        query.setFirstResult(primeiroregistroDaPagina);
        query.setMaxResults(totalRegistrosPorPagina);
    }

    private Long total(UsuarioFilter usuarioFilter) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Usuario> root = criteria.from(Usuario.class);

        Predicate[] predicates = criarRestricoes(usuarioFilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("nomeusuario")));

        criteria.select(builder.count(root));
        return manager.createQuery(criteria).getSingleResult();
    }

    private Predicate[] criarRestricoes(UsuarioFilter usuarioFilter, CriteriaBuilder builder, Root<Usuario> root) {
        List<Predicate> predicates = new ArrayList<>();
        if (!StringUtils.isEmpty(usuarioFilter.getNomeusuario())) {
            predicates.add(builder.like(builder.lower(root.get("nomeusuario")),
                    "%" + usuarioFilter.getNomeusuario().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(usuarioFilter.getCidade())) {
            predicates.add(builder.like(builder.lower(root.get("cidade")),
                    "%" + usuarioFilter.getCidade().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(usuarioFilter.getEndereco())) {
            predicates.add(builder.like(builder.lower(root.get("endereco")),
                    "%" + usuarioFilter.getEndereco().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(usuarioFilter.getEmail())) {
            predicates.add(builder.like(builder.lower(root.get("email")),
                    "%" + usuarioFilter.getEmail().toLowerCase() + "%"));
        }
        return predicates.toArray((new Predicate[predicates.size()]));
    }


}

