package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name="rotas")
public class Rotas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idrotas;
    private double rotas;


    @ManyToOne
    @JoinColumn(name = "idusuario")
    private Usuario usuario;

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Integer getIdrotas() {
        return idrotas;
    }

    public void setIdrotas(Integer idrotas) {
        this.idrotas = idrotas;
    }

    public double getRotas() {
        return rotas;
    }

    public void setRotas(double rotas) {
        this.rotas = rotas;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Rotas rotas = (Rotas) o;
        return idrotas.equals(rotas.idrotas);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idrotas);
    }
}
