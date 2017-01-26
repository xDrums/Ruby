class Lambdas
  def initialize()
  end
  def mostrar()
    lamb = lambda do |nom|
      if nom == 'Luis'
        return 'Hola Luis'
      else
        return 'Hola Anonimo'
      end
    end
    puts lamb.call('Juan')
  end
end
objeto = Lambdas.new
objeto.mostrar
gets()  
