package br.com.Tcc.TccBusLanes.model;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="linhas")
public class Linhas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idlinhas;
    private String linhas;

    @JsonIgnore
   @OneToMany(mappedBy = "linhas")
   private List<Pontos> pontos = new ArrayList<>();

    public List<Pontos> getPontos() {
        return pontos;
    }

    public void setPontos(List<Pontos> pontos) {
        this.pontos = pontos;
    }

    public Integer getId() {
        return idlinhas;
    }

    public void setId(Integer id) {
        this.idlinhas = id;
    }

    public String getLinhas() {
        return linhas;
    }

    public void setLinhas(String linhas) {
        this.linhas = linhas;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Linhas linhas = (Linhas) o;
        return idlinhas.equals(linhas.idlinhas);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idlinhas);
    }
}
