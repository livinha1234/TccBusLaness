package br.com.Tcc.TccBusLanes.repository.filter;

import java.math.BigDecimal;
import java.time.LocalTime;

public class HorariosFilter {

    private String horarios;
    private String semana;

    public String getHorarios() {
        return horarios;
    }

    public void setHorarios(String horarios) {
        this.horarios = horarios;
    }

    public String getSemana() {
        return semana;
    }

    public void setSemana(String semana) {
        this.semana = semana;
    }
}
