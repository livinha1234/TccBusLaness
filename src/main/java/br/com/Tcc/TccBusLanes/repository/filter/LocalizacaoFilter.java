package br.com.Tcc.TccBusLanes.repository.filter;

import java.math.BigDecimal;

public class LocalizacaoFilter {
    private BigDecimal localizacao;
    private double transportadora;

    public BigDecimal getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(BigDecimal localizacao) {
        this.localizacao = localizacao;
    }

    public double getTransportadora() {
        return transportadora;
    }

    public void setTransportadora(double transportadora) {
        this.transportadora = transportadora;
    }
}
