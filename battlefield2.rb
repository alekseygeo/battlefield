$field
class Field 
def initialize
    $field = [[],[],[],[],[],[],[],[],[],[]]
    10.times do |el|
        $field[0] << "*"
        $field[1] << "*"
        $field[2] << "*"
        $field[3] << "*"
        $field[4] << "*"
        $field[5] << "*"
        $field[6] << "*"
        $field[7] << "*"
        $field[8] << "*"
        $field[9] << "*"
    end  
end  

 def print_field
  #len = $field[0].size
  10.times do |el|
  puts $field[el].join(" ")
  end
 end   
    
end  
f=Field.new
#f.print_field
#--------------------------
#--------------------------
class Ship
  def initialize
    @ship1=[1]
    
  end

  def ship_len

  end

  def ship_place
    ship1_x = rand(0..9)
    ship1_y = rand(0..9)
    @ship1.push(ship1_x,ship1_y )
    $field[ship1_y][ship1_x]=@ship1[0]
    if ship1_x < 9
    $field[ship1_y][ship1_x+1] = "R"
    $field[ship1_y-1][ship1_x+1] = "R"
    end
    if ship1_x > 0 
      $field[ship1_y][ship1_x-1] = "R" 
      $field[ship1_y+1][ship1_x-1] = "R" 
    end 
    if ship1_y < 9
    $field[ship1_y+1][ship1_x] = "R"
    end
    if ship1_y > 0
      $field[ship1_y-1][ship1_x] = "R"
      end
    puts ship1_x
    puts ship1_y
    10.times do |el|
      puts $field[el].join(" ")
      end
  end  

end
s=Ship.new
s.ship_place