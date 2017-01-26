class EntradaDatos
  def muestra()
    puts "Dame tu nombre"
    nombre = gets()
    puts "tu nombre es #{nombre}" # forma 1
    puts "tu nombre es " + nombre
  end
end

obj = EntradaDatos.new
obj.muestra
gets()
