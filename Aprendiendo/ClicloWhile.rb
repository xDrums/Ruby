class CicloWhile
  def muestra()
    i=0
    while i<5 do
      print i
      i +=1
    end
    puts ""
    puts "------------"
    i=0
    begin
      print i
      i+=1
    end while i< 5
        puts ""
    puts "------------"
    i=0
    until i>5 do
      print i
      i+=1
    end
  end
end

obj = CicloWhile.new
obj.muestra
gets()
