package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Data
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

}
