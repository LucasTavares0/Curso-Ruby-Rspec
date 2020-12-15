Estória: Saque no Caixa Eletronico
    Sendo um cliente correntista do Ninja Bank
    Posso sacar dinheiro
    Para poder usar dinheiro fisico na compra de bens de consumo

Cenário: Saque em conta corrente
    Dado que eu tenha R$1000 reais na minha conta corrente
    Quando tento sacar R$200
    Então meu saldo final deve ser R$800


Cenário: Saque em conta corrente com saldo zerado
    Dado que eu tenha R$ 0 na minha conta corrente
    Quando tento fazer um saque de R$ 100
    Então vejo uma mensagem "Saldo insuficiente para saque"
    E meu saldo final deve ser R$0

Cenário: Saque em conta corrente com saldo insuficiente
    Dado que eu tenha R$500 na minha conta corrente
    Quando eu tenho sacar o valor de R$501
    Entao vejo uma mensagem "Saldo insuficiente para saque"
    E meu saldo final deve ser de R$500

Cenário: Limite por saque
    Dado que eu tenha R$1000 na minha conta corrente
    Quando eu tento sacar R$750 
    Então vejo uma mensagem "Saques limitados a R$700 por saque"
    E meu saldo final deve ser R$1000