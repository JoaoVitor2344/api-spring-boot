package com.gerenciador.demo.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pessoa")
public class Pessoa implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_pessoa")
    private int cod_pessoa;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "endereco")
    private String endereco;
    
    @Column(name = "telefone")
    private String telefone;

    public Pessoa() {
    }

    public Pessoa(int cod_pessoa, String nome, String endereco, String telefone) {
        this.cod_pessoa = cod_pessoa;
        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
    }

    public int getCod_pessoa() {
        return cod_pessoa;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
        return "Pessoa{" + "cod_pessoa=" + getCod_pessoa() + ", nome=" + getNome() + ", endereco=" + getEndereco() + ", telefone=" + getTelefone() + '}';
    }
    
    
}
