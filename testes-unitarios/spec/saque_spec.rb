

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


describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.sacar(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end 


        context 'quando o saldo é zero' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.sacar(100.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@conta.saldo).to eql 0.00
            end
        end 

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(500.00)
                @conta.sacar(510.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@conta.saldo).to eql 500.00
            end
        end 


        context 'quando o valor do saque é maior que o limite' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.sacar(750.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.mensagem).to eql 'Saques limitados a R$700 por saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@conta.saldo).to eql 1000.00
            end
        end 
    end

end 