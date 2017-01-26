class Arreglos
  def initialize()
  end
  def mostrar()
    ejemplo  = [1,2,3,4,5,6]# crea Arreglo 
    for i in ejemplo # recorriendo Arreglo muestra
      puts i
    end
    puts "---------------"
    ejemplo.each do |i| # recorriendo Arreglo muestra
      puts i
    end
    puts "---------------"
    otro = ejemplo.map{|i| i+1} #recorriendo arreglos y suma 1
    for i in otro
      puts i
    end
    puts "---------------"
    otro = ejemplo.select{|num| num%2 ==0} #recorriendo arreglos pares
    for i in otro
      puts i
    end
    puts "---------------"
    del = ejemplo.delete_if{|num| num%2==0}# elimina arreglos impares
    for i in del
      puts i
    end
  end
end
objeto = Arreglos.new
objeto.mostrar
gets()  
