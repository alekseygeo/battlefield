class Train
  def initialize(count_carriage)
    @train_number = rand(100..200)
    @count_c = count_carriage
    @carriages = []
    
    @count_c.times do
      @carriages << RailwayCarriage.new()
    end
    puts @carriages[0].coupe_count
  end

  def create_train

  end

end

class RailwayCarriage
  def initialize(count_coupe = 10)
    @coupe = []
    @count_co = count_coupe

    @count_co.times do
      @coupe << Coupe.new

    end
    
    puts @coupe[8].places[2]
  end
  
 
  def coupe_count
  return @count_co
 end

end

class Coupe

  def initialize()
    @count_of_places = [1,2,3,4] 
  end

  def places
    return @count_of_places
  end

end


#co = Coupe.new
t = Train.new(2) # train with 2 carriages
t.create_train
