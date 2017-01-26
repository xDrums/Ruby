class Perro
  def initialize(nom,raza)# Metodo Constructor
    @nombre = nom
    @raza = raza
  end
  def ladra(nom)
    puts "Guau Guau #{nom}"
  end
  def dame_nombre
    return "Te llamas : "+@nombre
  end
  def raza
    return "Tu Raza es : "+@raza
  end
end