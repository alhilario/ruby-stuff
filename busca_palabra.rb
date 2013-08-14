puts "Digite un parrafo: "
text = gets.chomp
puts "Digite una palabra a buscar: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word != redact
        print word + " "
    else
        print "REDACTADO " 
    end
end
