class Automovel
    attr_accessor :nome, :marca, :modelo

    def initialize (nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def informacoes
        puts "Informações basicas do veículo: \n Nome: #{self.nome} \n Marca: #{self.marca} \n Modelo: #{self.modelo}"
    end
end 

class Carro < Automovel
    def dirigir
        puts 'Dirigindo carro...'
    end
end

class Moto < Automovel
    def pilotar
        puts 'Pilotando moto...'
    end
end

logan = Carro.new('Logan', 'Renaut', '2.0')
logan.informacoes
logan.dirigir

celta = Carro.new('Celta', 'Fiat', '1.6')
celta.informacoes
celta.dirigir

lambreta = Moto.new('Lambreta', 'Ford', '1.0')
lambreta.informacoes
lambreta.pilotar