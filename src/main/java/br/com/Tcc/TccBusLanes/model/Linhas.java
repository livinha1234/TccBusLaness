package br.com.Tcc.TccBusLanes.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import javax.persistence.*;
import java.util.List;


@Data
@Entity
@Table(name="linhas")
public class Linhas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idlinhas;
    private String linhas;

    @JsonIgnore
   @OneToMany(mappedBy = "linhas")
   private List<Pontos> pontos;

    @OneToMany(mappedBy = "horarios")
    private List<Horarios> horariosLinhas;


}
