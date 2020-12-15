
puts "Utilizando Times"
10.times do |i|
   puts "contando: " + (i + 1).to_s
end


puts "Utilizando While"
cont = 1
while cont <= 10 do
    puts "Contando " + cont.to_s
    cont += 1
end


puts "Utilizando For"
for item in (0...10) 
    puts "Contando " + item.to_s
end


puts "Utilizando Each (para Arrays)"
amigos = ["Lucas", "Vanessa", "Gabriella"]
amigos.each do |amigo|
    puts amigo
end