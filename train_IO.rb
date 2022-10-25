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
    file.print("#{i + 2}\n")
    end
    file.close
  end
  
  def self.all
    trains_number = []
    @@trains.each do |tr|
      #p tr.number
      trains_number << tr.number
      
    end
    Train.save(trains_number)  
  end

  def self.read
    #puts content = File.read("./train_numbers.txt")

    File.open("./train_numbers.txt", "r:UTF-8") do |f|
      f.each do |line|
        puts line
      end
    end

  end
  
end

Train.new(56)
Train.new(45)
Train.new(786)
Train.all
Train.read