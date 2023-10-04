package br.com.Tcc.TccBusLanes.model;

import lombok.Data;
import javax.persistence.*;


@Data
@Entity
@Table(name="horarios")
public class Horarios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idhorarios;
    private String horarios;
    private String semana;

    @ManyToOne
    @JoinColumn(name = "idlinhas")
    private Linhas linhas;
}
