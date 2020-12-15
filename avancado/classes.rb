
class Conta
    attr_accessor :saldo
    attr_accessor :nome

    def deposita(valor)
        puts "Depositando a quantia de #{valor} reais..."
        self.saldo += valor
        puts "Saldo depositado com sucesso. Saldo atual: #{self.saldo}"
    end

    def initialize(nome, saldoInicial)
        self.saldo = saldoInicial
        self.nome = nome
    end

    # def initialize
    #     self.saldo = 0.0
    #     self.nome = 'Não Definido'
    # end
end

#contaBasica = Conta.new
contaLucas = Conta.new('Lucas', 250.00)

#puts contaBasica
puts contaLucas.nome
puts contaLucas.saldo


