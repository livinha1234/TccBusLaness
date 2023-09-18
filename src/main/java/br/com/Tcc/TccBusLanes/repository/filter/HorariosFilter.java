package br.com.Tcc.TccBusLanes.repository.filter;

import java.math.BigDecimal;
import java.time.LocalTime;

public class HorariosFilter {

    private LocalTime horarios;
    private String linhas;

    public LocalTime getHorarios() {
        return horarios;
    }

    public void setHorarios(LocalTime horarios) {
        this.horarios = horarios;
    }

    public String getLinhas() {
        return linhas;
    }

    public void setLinhas(String linhas) {
        this.linhas = linhas;
    }
}
