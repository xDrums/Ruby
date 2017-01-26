=begin
  Procedures // agrupan bloques para ejecutar cuando uno quiera
=end
class Array
  def iterar(bloque)
    self.each_with_index do |n,i|#numero(n) y indice(i)
      self[i] = bloque.call(n)
    end
  end
end
arreglo = [1,2,3]
arreglo2 = [10,20,30]
elevarCuadrado = Proc.new do |n|
  n**2
end
arreglo.iterar(elevarCuadrado)
arreglo2.iterar(elevarCuadrado)
for i in arreglo2
  puts i 
end
gets()
