package br.com.Tcc.TccBusLanes.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name="localização")
public class Localizacao {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idloc;
    private double localizacao;


    @ManyToOne
    @JoinColumn(name = "idtransportadora")
    private Transportadora transportadora;

    public Transportadora getTransportadora() {
        return transportadora;
    }

    public void setTransportadora(Transportadora transportadora) {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Localizacao that = (Localizacao) o;
        return idloc.equals(that.idloc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idloc);
    }
}
