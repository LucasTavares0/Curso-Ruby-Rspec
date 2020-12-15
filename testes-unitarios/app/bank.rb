class Conta 

    attr_accessor :saldo
    attr_accessor :mensagem

    def initialize(saldoInicial)
        self.saldo = saldoInicial
    end

    def sacar(valorSaque, max, taxa)
        if(valorSaque > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque'
        elsif(valorSaque > 700)
            self.mensagem = 'Saques limitados a R$700 por saque'       
        else
            self.saldo -= (valorSaque + taxa)
        end
    end 

end


class ContaCorrente < Conta
    
    def sacar(valor, max = 700, taxa = 5)
        super
    end 

end

class ContaPoupanca < Conta

    def sacar(valor, max = 500, taxa = 2)
        super
    end 

end