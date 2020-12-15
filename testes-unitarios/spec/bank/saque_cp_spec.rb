require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @contaP = ContaPoupanca.new(1000.00)
                @contaP.sacar(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaP.saldo).to eql 798.00
            end
        end 


        context 'quando o saldo é zero' do
            before(:all) do
                @contaP = ContaPoupanca.new(0.00)
                @contaP.sacar(100.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaP.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaP.saldo).to eql 0.00
            end
        end 

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @contaP = ContaPoupanca.new(500.00)
                @contaP.sacar(510.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaP.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaP.saldo).to eql 500.00
            end
        end 


        context 'quando o valor do saque é maior que o limite' do
            before(:all) do
                @contaP = ContaPoupanca.new(1000.00)
                @contaP.sacar(750.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaP.mensagem).to eql 'Saques limitados a R$700 por saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaP.saldo).to eql 1000.00
            end
        end 
    end

end 