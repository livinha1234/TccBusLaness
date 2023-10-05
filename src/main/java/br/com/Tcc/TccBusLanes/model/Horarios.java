package br.com.Tcc.TccBusLanes.model;

import lombok.Data;
import javax.persistence.*;
import java.util.List;


@Data
@Entity
@Table(name="horarios")
public class Horarios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idhorarios;
    private String horarios;
    private String semana;

    @OneToMany(mappedBy = "linhas")
    private List<Linhas> Linhas;
}
