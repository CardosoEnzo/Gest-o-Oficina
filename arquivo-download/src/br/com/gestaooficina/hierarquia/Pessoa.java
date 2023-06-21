/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.gestaooficina.hierarquia;

/**
 *
 * @author ADM
 */
public abstract class Pessoa {
    public String cpf;
    public String nome;
    public String sobrenome;
    public String email;
    public String telefone;
    public String senha;
    
    public Pessoa(String cpf, String nome, String sobrenome, String email, String telefone, String senha){
        this.cpf = cpf;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.email = email;
        this.telefone = telefone;
        this.senha = senha;
    }
    
    protected void logar(String cpf, String senha){
        
    }
    protected void cadastrar(Pessoa pessoa){
        
    }
    protected void alterarCadastro(Pessoa pessoa){
        
    }
}   
