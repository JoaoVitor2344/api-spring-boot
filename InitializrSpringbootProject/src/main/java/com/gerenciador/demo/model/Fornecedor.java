package com.gerenciador.demo.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="fornecedor")
public class Fornecedor implements Serializable {
    
    @Id
    @Column(name = "cod_pessoa")
    private int cod_pessoa;
    
    @Column(name = "cnpj")
    private String cnpj;

    public Fornecedor() {
    }

    public Fornecedor(int cod_pessoa, String cnpj) {
        this.cod_pessoa = cod_pessoa;
        this.cnpj = cnpj;
    }

    public int getCod_pessoa() {
        return cod_pessoa;
    }

    public void setCod_pessoa(int cod_pessoa) {
        this.cod_pessoa = cod_pessoa;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    @Override
    public String toString() {
        return "Fornecedor{" + "cod_pessoa=" + getCod_pessoa() + ", cnpj=" + getCnpj() + '}';
    }
    
    
}
