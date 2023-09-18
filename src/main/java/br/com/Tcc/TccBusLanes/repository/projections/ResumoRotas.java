package br.com.Tcc.TccBusLanes.repository.projections;

import java.math.BigDecimal;

public class ResumoRotas {
    private Integer idrotas;
    private BigDecimal rotas;
    private String nomeusuario;
    private String telefone;
    private String email;
    private String cidade;
    private String senha;

    public ResumoRotas(Integer idrotas, BigDecimal rotas, String nomeusuario, String telefone, String email, String cidade, String senha) {
        this.idrotas = idrotas;
        this.rotas = rotas;
        this.nomeusuario = nomeusuario;
        this.telefone = telefone;
        this.email = email;
        this.cidade = cidade;
        this.senha = senha;
    }

    public Integer getIdrotas() {
        return idrotas;
    }

    public void setIdrotas(Integer idrotas) {
        this.idrotas = idrotas;
    }

    public BigDecimal getRotas() {
        return rotas;
    }

    public void setRotas(BigDecimal rotas) {
        this.rotas = rotas;
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
}
