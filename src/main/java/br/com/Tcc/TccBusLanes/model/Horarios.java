package br.com.Tcc.TccBusLanes.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Data
@Entity
@Table(name="horarios")
public class Horarios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idhorarios;
    private String horarios;
    private String semana;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "horarios_linhas",
            joinColumns =  @JoinColumn(name= "idhorarios"),
            inverseJoinColumns = @JoinColumn(name = "idlinhas")
    )
    private List<Linhas> linhas;
}
