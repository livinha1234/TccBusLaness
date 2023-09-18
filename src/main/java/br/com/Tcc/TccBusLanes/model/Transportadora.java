package br.com.Tcc.TccBusLanes.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="transportadora")
public class Transportadora {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idtrans;
    private String transportadora;

    @JsonIgnore
    @OneToMany(mappedBy = "transportadora")
    private List<Localizacao> localização = new ArrayList<>();

    public List<Localizacao> getLocalização() {
        return localização;
    }

    public void setLocalização(List<Localizacao> localização) {
        this.localização = localização;
    }

    public Integer getId() {
        return idtrans;
    }

    public void setId(Integer id) {
        this.idtrans = id;
    }

    public String getTransportadora() {
        return transportadora;
    }

    public void setTransportadora(String transportadora) {
        this.transportadora = transportadora;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Transportadora that = (Transportadora) o;
        return idtrans.equals(that.idtrans);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idtrans);
    }
}
