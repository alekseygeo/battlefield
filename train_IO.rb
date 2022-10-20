class Train
  @@trains = []
  
  attr_accessor :number
  
  def initialize(n)
    @number = n
    @@trains << self
  end
  
  def self.save(number)
    save_number = number
    file = File.new("./train_numbers.txt", "w+:UTF-8")

    save_number.each do |i|
    file.print("#{i}\r")
    end
    file.close
  end
  
  def self.all
    trains_number = []
    @@trains.each do |tr|
      p tr.number
      trains_number << tr.number
      
    end
    Train.save(trains_number)  
  end
  
end

Train.new(56)
Train.new(45)
Train.new(786)
Train.all