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
    protected String cpf;
    protected String nome;
    protected String sobrenome;
    protected String email;
    protected String telefone;
    protected String senha;
    
    protected void logar(String cpf, String senha){
        
    }
    protected void cadastrarCliente(String cpf, String nome, String sobrenome, String email, String telefone, String senha){
        
    }
    protected void editarCliente(){
        
    }
}   
