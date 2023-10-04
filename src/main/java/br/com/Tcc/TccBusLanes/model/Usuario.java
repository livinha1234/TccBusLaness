package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Data
@Entity
@Table(name="usuario")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idusuario;
    private String nomeusuario;
    private String telefone;
    private String email;
    private String cidade;
    private String senha;
    private String img;

    @JsonIgnore
    @OneToMany(mappedBy = "usuario" )
    public List<Rotas> rotas;

}
