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
public class OrdemServico {
    public String data_emitida;
    public String descricao;
    public double valor;
    public Veiculo veiculo;
    
    public OrdemServico(String descricao, double valor, Veiculo veiculo){
        this.descricao = descricao;
        this.valor = valor;
        this.veiculo = veiculo;
    }
}
