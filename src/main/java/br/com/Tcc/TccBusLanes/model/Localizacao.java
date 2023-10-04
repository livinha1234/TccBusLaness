package br.com.Tcc.TccBusLanes.model;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Data
@Entity
@Table(name="localização")
public class Localizacao {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idloc;
    private double localizacao;


    @ManyToOne
    @JoinColumn(name = "idtransportadora")
    private Transportadora transportadora;

}
