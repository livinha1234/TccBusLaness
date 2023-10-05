package br.com.Tcc.TccBusLanes.repository.projections;

public class ResumoLinhas {
    private Integer idlinhas;
    private String linhas;
    private String horarios;

    public ResumoLinhas(Integer idlinhas, String linhas, String horarios) {
        this.idlinhas = idlinhas;
        this.linhas = linhas;
        this.horarios = horarios;
    }

    public Integer getIdlinhas() {
        return idlinhas;
    }

    public void setIdlinhas(Integer idlinhas) {
        this.idlinhas = idlinhas;
    }

    public String getLinhas() {
        return linhas;
    }

    public void setLinhas(String linhas) {
        this.linhas = linhas;
    }

    public String getHorarios() {
        return horarios;
    }

    public void setHorarios(String horarios) {
        this.horarios = horarios;
    }
}
