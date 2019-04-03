chutes = []

chute = 176
chutes << chute

chute = 100
chutes << chute

chute = 200
chutes << chute   # aqui a variavel chutes recebe o valor de chute sempre na ultima posição

puts chutes.size # imprime sempre o tamanho do Arry
for chute in chutes
    puts chute
end
