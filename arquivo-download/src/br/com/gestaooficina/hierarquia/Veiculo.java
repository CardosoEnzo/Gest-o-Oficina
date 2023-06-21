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
public class Veiculo {
    public Cliente cliente;
    public String placa;
    public String marca;
    
    public Veiculo(Cliente cliente, String placa, String marca){
        this.cliente = cliente;
        this.placa = placa;
        this.marca = marca;
    }
}
