class Hash
  def muestra()
    cursos = {'ruby'=>21,'pag_web'=>15,'html5'=>25}
    puts cursos['pag_web']
    puts cursos['ruby']
    cursos.each do |key,value|
      puts "#{key} tiene #{value} videos"
    end
    indices = cursos.keys
    for i in indices
      puts i
    end
    indices = cursos.values
    for i in indices
      puts i
    end
  end
end
obj= Hash.new
obj.muestra
gets()
