require_relative 'clsPerro.rb' # define clase clsPerro

puts "Introdusca su Nombre"
nom = gets
puts "Introdusca Raza"
raza = gets
obj = Perro.new(nom,raza)
#obj.ladra(nom) # si se agrega .class muestra el tipo de objeto llamado "String"
puts obj.dame_nombre
puts obj.raza
gets()# solo detiene la consola con un promt
