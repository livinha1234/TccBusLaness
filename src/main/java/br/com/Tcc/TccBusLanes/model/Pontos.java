package br.com.Tcc.TccBusLanes.model;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Data
@Entity
@Table(name="pontos")
public class Pontos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idpontos;
    private long lat;
    private long lgn;


    @ManyToOne
    @JoinColumn(name = "idlinhas")
    private Linhas linhas;

}
