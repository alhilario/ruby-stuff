#Prueba de captura e Impresion  
print "¿Cual es su nombre?"
first_name = gets.chomp
first_name.capitalize!

print "¿Cual es su apellido?"
last_name = gets.chomp
last_name.capitalize!

print "¿De que cuidad es?"
city = gets.chomp
city.capitalize!

print "¿De que provincia?"
state = gets.chomp
state.upcase!

puts "Mi nombre es #{first_name} #{last_name} soy de #{city}, #{state}"
