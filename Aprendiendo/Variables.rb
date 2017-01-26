class Variables
  $ejemplo="Variable Global"
  def initialize()
     @ejemplo="Variable Instancia"
  end
  def muestra()
    ejemplo ="Variable local"
    puts ejemplo
    puts @ejemplo
    puts $ejemplo
  end
end
obj = Variables.new
obj.muestra
gets()
