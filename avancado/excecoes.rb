
# begin
#     # Tentando abrir um arquivo
#     file = File.open('./hello.txt')
#     if file
#         puts file.read 
#     end

# rescue Exception => e 
#     # Printando alguma excecao
#     puts e
# end 

def soma(numero1, numero2)
    puts numero1 + numero2
rescue Exception => e 
    puts e.message
    puts e.backtrace
end

soma(1, 2)