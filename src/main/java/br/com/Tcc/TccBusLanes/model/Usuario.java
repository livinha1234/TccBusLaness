package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

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
    public List<Rotas> rotas = new ArrayList<>();

    public Long getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Long idusuario) {
        this.idusuario = idusuario;
    }

    public String getNomeusuario() {
        return nomeusuario;
    }

    public void setNomeusuario(String nomeusuario) {
        this.nomeusuario = nomeusuario;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public List<Rotas> getRotas() {
        return rotas;
    }

    public void setRotas(List<Rotas> rotas) {
        this.rotas = rotas;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Usuario usuario = (Usuario) o;
        return idusuario.equals(usuario.idusuario);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idusuario);
    }
}
