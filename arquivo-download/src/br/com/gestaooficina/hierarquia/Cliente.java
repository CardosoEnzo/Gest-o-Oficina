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
public class Cliente extends Pessoa{

    public Cliente(String cpf, String nome, String sobrenome, String email, String telefone, String senha) {
        super(cpf, nome, sobrenome, email, telefone, senha);
    }
   
    protected void visualizarOrdemServico(){
        
    }
}
