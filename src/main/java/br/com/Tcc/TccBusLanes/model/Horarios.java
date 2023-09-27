package br.com.Tcc.TccBusLanes.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="horarios")
public class Horarios {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idhorarios;
    private LocalTime horarios;
    private String semana;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "horarios_linhas",
            joinColumns =  @JoinColumn(name= "idhorarios"),
            inverseJoinColumns = @JoinColumn(name = "idlinhas")

    )
    private List<Linhas> linhas;


    public Integer getIdhorarios() {
        return idhorarios;
    }

    public void setIdhorarios(Integer idhorarios) {
        this.idhorarios = idhorarios;
    }

    public LocalTime getHorarios() {
        return horarios;
    }

    public void setHorarios(LocalTime horarios) {
        this.horarios = horarios;
    }

    public List<Linhas> getLinhas() {
        return linhas;
    }

    public void setLinhas(List<Linhas> linhas) {
        this.linhas = linhas;
    }

    public String getSemana() {
        return semana;
    }

    public void setSemana(String semana) {
        this.semana = semana;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Horarios horarios = (Horarios) o;
        return idhorarios.equals(horarios.idhorarios);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idhorarios);
    }
}
