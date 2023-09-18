package br.com.Tcc.TccBusLanes.repository.projections;

public class ResumoPontos {
    private Integer idpontos;
    private double pontos;
    private String linhas;

    public ResumoPontos(Integer id, double pontos, String linhas) {
        this.idpontos = id;
        this.pontos = pontos;
        this.linhas = linhas;
    }

    public Integer getId() {
        return idpontos;
    }

    public void setId(Integer id) {
        this.idpontos = id;
    }

    public double getPontos() {
        return pontos;
    }

    public void setPontos(double pontos) {
        this.pontos = pontos;
    }

    public String getLinhas() {
        return linhas;
    }

    public void setLinhas(String linhas) {
        this.linhas = linhas;
    }
}
