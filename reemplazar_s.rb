#!/usr/bin/ruby
=begin
Probado reemplazar las s digitadas por th
Y pensado en hacer algunas mejores
=end

print "Como se llama su nombre suyo de usted?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    my_string = user_input.gsub!(/s/, "th")
    puts "El valor real es: #{my_string}!"
else
    print "Usted no tiene s"
end
