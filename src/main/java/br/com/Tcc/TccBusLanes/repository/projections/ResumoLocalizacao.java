package br.com.Tcc.TccBusLanes.repository.projections;

import java.time.LocalTime;

public class ResumoLocalizacao {
     private Integer idloc;
    private double localizacao;
    private String transportadora;

    public ResumoLocalizacao(Integer id, double localizacao, String transportadora) {
        this.idloc = id;
        this.localizacao = localizacao;
        this.transportadora = transportadora;
    }

    public Integer getId() {
        return idloc;
    }

    public void setId(Integer id) {
        this.idloc = id;
    }

    public double getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(double localizacao) {
        this.localizacao = localizacao;
    }

    public String getTransportadora() {
        return transportadora;
    }

    public void setTransportadora(String transportadora) {
        this.transportadora = transportadora;
    }
}
