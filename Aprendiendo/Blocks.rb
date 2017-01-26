=begin
  blocks // solo se puede ejecutar 1 ves
=end
class Array
  def iterar
    self.each_with_index do |n,i|#numero(n) y indice(i)
      self[i] = yield(n)
    end
  end
end
arreglo = [1,2,3,4,5,6]
arreglo.iterar do |n|
  n+2
end
for i in arreglo
  puts i
end
gets()
