package br.com.Tcc.TccBusLanes.repository.filter;

import java.math.BigDecimal;

public class RotasFilter {
    private BigDecimal rotas;
    private String nomeusuario;
    private String endereco;
    private String telefone;
    private String email;
    private String cidade;
    private String senha;

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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
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
