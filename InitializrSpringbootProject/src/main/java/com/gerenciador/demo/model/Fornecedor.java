package com.gerenciador.demo.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="fornecedor")
public class Fornecedor implements Serializable {
    
    @Id
    private Integer cod_pessoa;
    
    @MapsId("cod_pessoa")
    @OneToOne
    @JoinColumn(name = "cod_pessoa")
    private Pessoa pessoa;
    
    @Column(name = "cnpj")
    private String cnpj;
    
    public Fornecedor() {
    }

    public Fornecedor(Integer cod_pessoa, String cnpj) {
        this.cod_pessoa = cod_pessoa;
        this.cnpj = cnpj;
    }

    public Integer getCod_pessoa() {
        return cod_pessoa;
    }

    public void setCod_pessoa(Integer cod_pessoa) {
        this.cod_pessoa = cod_pessoa;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    
}
