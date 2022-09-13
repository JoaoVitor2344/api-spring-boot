package com.gerenciador.demo.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "produto")
public class Produto implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_produto")
    private Integer cod_Produto;
    
    @Column(name = "cod_fornecedor")
    private Integer cod_fornecedor;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "tipo")
    private String tipo;
    
    @Column(name = "quantidade")
    private Integer quantidade;
    
    public Produto() {
    }

    public Produto(Integer cod_Produto, Integer cod_fornecedor, String nome, String tipo, Integer quantidade) {
        this.cod_Produto = cod_Produto;
        this.cod_fornecedor = cod_fornecedor;
        this.nome = nome;
        this.tipo = tipo;
        this.quantidade = quantidade;
    }

    public Integer getCod_Produto() {
        return cod_Produto;
    }

    public Integer getCod_fornecedor() {
        return cod_fornecedor;
    }

    public void setCod_fornecedor(Integer cod_fornecedor) {
        this.cod_fornecedor = cod_fornecedor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    
}
