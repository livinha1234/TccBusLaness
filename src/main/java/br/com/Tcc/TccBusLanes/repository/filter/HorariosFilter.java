package br.com.Tcc.TccBusLanes.repository.filter;

import java.math.BigDecimal;
import java.time.LocalTime;

public class HorariosFilter {

    private LocalTime horarios;
    private String linhas;
    private String semana;

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

    public String getSemana() {
        return semana;
    }

    public void setSemana(String semana) {
        this.semana = semana;
    }
}
