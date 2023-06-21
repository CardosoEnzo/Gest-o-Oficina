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
public class Funcionario extends Pessoa {

    public Funcionario(String cpf, String nome, String sobrenome, String email, String telefone, String senha) {
        super(cpf, nome, sobrenome, email, telefone, senha);
    }

    protected void cadastrarCliente(Cliente cliente) {

    }

    protected void listarCliente(Cliente cliente) {

    }

    protected void deletarCliente(Cliente cliente) {

    }

    protected void alterarCliente(Cliente cliente) {

    }

    protected void cadastrarOrdemServico(OrdemServico ordemServico) {

    }

    protected void editarOrdemServico(OrdemServico ordemServico) {

    }

    protected void deletarOrdemServico(OrdemServico ordemServico) {

    }

    protected void listarOrdemServico(OrdemServico ordemServico) {

    }

    protected void cadastrarVeiculo(Veiculo veiculo) {

    }

    protected void deletarVeiculo(Veiculo veiculo) {

    }

    protected void listarVeiculo(Veiculo veiculo) {

    }
}
