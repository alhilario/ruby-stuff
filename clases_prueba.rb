#!/usr/bin/ruby
class Computer
    @@users = {}
    
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} creado por #{@username} a las #{time}."
    end
    
    def Computer.get_users
        @@users
    end
end

my_computer = Computer.new("Alvaro", 123456789)
my_computer.create("cafe.txt")
puts "Usuarios: #{Computer.get_users}"
