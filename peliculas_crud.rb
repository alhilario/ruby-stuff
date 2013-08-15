#!/usr/bin/ruby
movies = { Forest: 3,
  Angry_man: 4,
  Meet_sparta: 1
}

puts "¿Que le gustaria hacer?"
puts "-- Digite 'add' para agregar una pelicula."
puts "-- Digite 'update' para actualizar una pelicula."
puts "-- Digite 'display' para ver la lista de peliculas."
puts "-- Digite 'delete' para borrar una pelicula."

choise = gets.chomp.downcase
case choise
when "add"
  puts "¿Que pelicula quiere agregar?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "¿Que puntuacion le quiere dar? (Digite un numero de 0 a 4)."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} ha sido agregada con una puntuacion de #{rating}."
  else
    puts "La pelicula ya se encuentra."
  end
when "update"
  puts "¿Que pelicula desea actualizar?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Pelicula no encontrada."
  else
    puts "¿Que puntuacion le quiere dar? (Digite un numero de 0 a 4)."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} ha sido actualizada con una puntuacion de #{rating}."
  end
when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}." }
when "delete"
  puts "¿Que pelicula deseas borrar?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Pelicula no encontrada."
  else
    movies.delete(title)
    puts "#{title} ha sido borrada."
  end
else
  puts "Lo siento, pero no entiendo lo que dice."
end
