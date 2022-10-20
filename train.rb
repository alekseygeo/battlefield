class Train
  attr_accessor :train_number
  def initialize(count_carriage)
    @train_number = rand(100..200)
    @count_c = count_carriage
    @carriages = []
    
    @count_c.times do
      @carriages << RailwayCarriage.new(self)
    end
    puts @carriages[0].coupe_count
  end

  def create_train

  end

end

class RailwayCarriage
  attr_accessor :train
  def initialize(count_coupe = 10, train)
    @coupe = []
    @count_co = count_coupe
    @train = train
    
    @count_co.times do
      @coupe << Coupe.new
    end
    
    puts @coupe[8].places[2]
    puts  self.train.train_number = 222
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
