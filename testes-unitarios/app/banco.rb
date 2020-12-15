class ContaCorrente 
    attr_accessor :saldo
    attr_accessor :mensagem

    def initialize(saldoInicial)
        self.saldo = saldoInicial
    end

    def sacar(valorSaque)
        
        if(valorSaque > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque'
        elsif(valorSaque > 700)
            self.mensagem = 'Saques limitados a R$700 por saque'       
        else
            self.saldo -= valorSaque
        end
    end
end
