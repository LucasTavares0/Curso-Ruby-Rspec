require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @contaC = ContaCorrente.new(1000.00)
                @contaC.sacar(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaC.saldo).to eql 795.00
            end
        end 


        context 'quando o saldo é zero' do
            before(:all) do
                @contaC = ContaCorrente.new(0.00)
                @contaC.sacar(100.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaC.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaC.saldo).to eql 0.00
            end
        end 

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @contaC = ContaCorrente.new(500.00)
                @contaC.sacar(510.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaC.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaC.saldo).to eql 500.00
            end
        end 


        context 'quando o valor do saque é maior que o limite' do
            before(:all) do
                @contaC = ContaCorrente.new(1000.00)
                @contaC.sacar(750.00)
            end
            it 'entao atualiza saldo' do
                expect(@contaC.mensagem).to eql 'Saques limitados a R$700 por saque'
            end
            it 'meu saldo deve permanecer o mesmo' do
                expect(@contaC.saldo).to eql 1000.00
            end
        end 
    end

end 