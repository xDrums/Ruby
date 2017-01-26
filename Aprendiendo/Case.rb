class Case
  def muestra
    edad=19
    res = case edad
      when 0..11 then print "Niño"
      when 11..17 then print "Adolecente"
      when 18..29 then print "Joven"
      when 30..59 then print "Adulto"
      else print "Error Variable"
     end
  end
end
obj = Case.new
obj.muestra
gets()# para que no se caiga
