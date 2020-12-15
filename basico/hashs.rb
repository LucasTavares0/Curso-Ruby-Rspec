
lucas = Hash[nome: 'Lucas da Silva Tavares', idade: 24, cor: 'Negro', sexo: 'M']

# puts lucas

# lucas[:peso] = 67.8

# puts lucas

# lucas.delete(:cor)

# puts lucas


vanessa = Hash[nome: 'Vanessa Viana', apelido: 'Vampira', cidade: 'Itanhanem', idade: 23, peso: 40.00]

amigos = [lucas, vanessa]

amigos.each do |a| 
    puts a
end