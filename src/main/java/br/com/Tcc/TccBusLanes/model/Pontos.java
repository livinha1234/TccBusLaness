package br.com.Tcc.TccBusLanes.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name="pontos")
public class Pontos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idpontos;
    private double pontos;


    @ManyToOne
    @JoinColumn(name = "idlinhas")
    private Linhas linhas;


    public Linhas getLinhas() {
        return linhas;
    }

    public void setLinhas(Linhas linhas) {
        this.linhas = linhas;
    }

    public Integer getId() {
        return idpontos;
    }

    public void setId(Integer id) {
        this.idpontos = id;
    }

    public double getPontos() {
        return pontos;
    }

    public void setPontos(double pontos) {
        this.pontos = pontos;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Pontos pontos = (Pontos) o;
        return idpontos.equals(pontos.idpontos);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idpontos);
    }
}
