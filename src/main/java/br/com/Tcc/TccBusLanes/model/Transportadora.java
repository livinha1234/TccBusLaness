package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Data
@Entity
@Table(name="transportadora")
public class Transportadora {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idtrans;
    private String transportadora;

    @JsonIgnore
    @OneToMany(mappedBy = "transportadora")
    private List<Localizacao> localização;

}
