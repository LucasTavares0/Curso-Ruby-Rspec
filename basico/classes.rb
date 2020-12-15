
class Pessoa
    
    attr_accessor :nome

    def initialize(nome)
        self.nome = nome
    end

    def apresentacao
        puts "Olá, meu nome é #{self.nome}. Prazer em conhecê-lo!!"
    end

end

lucas = Pessoa.new('Lucas')
puts lucas.apresentacao
