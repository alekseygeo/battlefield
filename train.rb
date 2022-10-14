class Train
  def initialize(cc, co)
    @train_number = rand(100..200)
    @route = "Lviv - Kyiv"
    @railway_carriage = cc.count_carriages
    @coupe = cc.count_coupes 
    @coupe*=@railway_carriage
    @places = co.count_places_coupe
end

def print_train
  puts "Train №#{@train_number }, route: #{@route}, count carriages: #{@railway_carriage}, count coupe: #{@coupe}, count places: #{@places} was created"  
end

end

class RailwayCarriage
  def initialize(count_carriage)
    @count_c = count_carriage
    @number_c  = Array.new(@count_c) {|i| i + 1}
  end
  def count_carriages
    return @count_c 
  end

  def count_coupes
    coupe = 10
  end
end

class Coupe
  def initialize(cc)
    @places = 4 * cc.count_coupes
    
  end
  def count_places_coupe
    return @places
    
  end
end

cc = RailwayCarriage.new(rand(10..20))
co = Coupe.new(cc)
t = Train.new(cc,co)
co.count_places_coupe
t.print_train