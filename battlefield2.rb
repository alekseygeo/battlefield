#$field
class Field 
def initialize
    @field = [[" ",0,1,2,3,4,5,6,7,8,9,],[],[],[],[],[],[],[],[],[],[]]
    11.times do |el|
      if el == 0
        @field[1] << "A"
        @field[2] << "B"
        @field[3] << "C"
        @field[4] << "D"
        @field[5] << "E"
        @field[6] << "F"
        @field[7] << "G"
        @field[8] << "H"
        @field[9] << "I"
        @field[10] << "J" 
      end
      if el !=0
        @field[1] << "*"
        @field[2] << "*"
        @field[3] << "*"
        @field[4] << "*"
        @field[5] << "*"
        @field[6] << "*"
        @field[7] << "*"
        @field[8] << "*"
        @field[9] << "*"
        @field[10] << "*"
      end
    end  
end

def get_field #передаємо  @field в ship_place(ships_field), потім field = ships_field.get_field
  @field
end

def set_field(value)
  @field = value
end

def normalize
  11.times do |el|
    for i in 1..10
      if @field[el][i] == "R"
        @field[el][i] = "*"
      end
    end
  end

end

 def print_field
  normalize
   11.times do |el|
     puts @field[el].join(" ")
   end
 end   
    
end  
f=Field.new
#--------------------------
#--------------------------
#=begin
class Ship
  def initialize (ship)
    @ship1=[ship.to_i]
    #puts @ship1[0]
  end


  def ship_place(ships_field)
    field = ships_field.get_field
    vertical_position=0
    gorisontal_position=0
    position = rand(0..1)

    if position == 0
      gorisontal_position=1
    end
    if  position == 1
      vertical_position=1
    end
      
    ship1_x = rand(1..10)
    ship1_y = rand(1..10)
    
    
    #-----------------------------------------
    if vertical_position == 1

      if ship1_y + @ship1[0] > 10
        while ship1_y + @ship1[0] > 10 do
          ship1_y = rand(1..10)
        end
      end
        #puts "Vertical ship1_x: #{ship1_x} "
        #puts "Vertical ship1_y: #{ship1_y} "
        n=0
        while n!=@ship1[0] do
          if field[ship1_y + n][ship1_x] == "*"
            n+=1
           else
            #puts "n=#{n}"
            ship1_x = rand(1..10)
            ship1_y = rand(1..10)
            #puts "Vertical ship1_x rand redo: #{ship1_x} "
            #puts "Vertical ship1_y rand redo: #{ship1_y} "
            n=0
            if ship1_y + @ship1[0] > 10
              while ship1_y + @ship1[0] > 10 do
                ship1_y = rand(1..10)
              end
            end
            redo   
          end  
        end
        

      for i in (0..@ship1[0]-1)

          field[ship1_y+i][ship1_x]=@ship1[0]
          if ship1_x == 1
            field[ship1_y+i][ship1_x+1] = "R"
            elsif ship1_x == 10
            field[ship1_y+i][ship1_x-1] = "R" 
            else
            field[ship1_y+i][ship1_x+1] = "R"
            field[ship1_y+i][ship1_x-1] = "R"
          end 

          if i==0
            if ship1_y > 1 
              if ship1_x!=10
                field[ship1_y-1][ship1_x+1] = "R"
              end
              field[ship1_y-1][ship1_x] = "R"
            end
            if ship1_y > 1 && ship1_x > 1
              field[ship1_y-1][ship1_x-1] = "R"
            end
          
          end

          if i==@ship1[0]-1 && i+ship1_y < 10
            if ship1_x > 1
              field[ship1_y+@ship1[0]][ship1_x-1] = "R"
            end
            field[ship1_y+@ship1[0]][ship1_x] = "R"
            if ship1_x!=10
              field[ship1_y+@ship1[0]][ship1_x+1] = "R"
            end
        
          end


      end
    end
    #-----------------------------------------
    if gorisontal_position == 1 
      if ship1_x + @ship1[0] > 10
        while ship1_x + @ship1[0] > 10 do
          ship1_x = rand(1..10)
        end
      end

      n=0
      while n!=@ship1[0] do
        if field[ship1_y][ship1_x + n] == "*"
          n+=1
         else
          ship1_x = rand(1..10)
          ship1_y = rand(1..10)
          n=0
          if ship1_x + @ship1[0] > 10
            while ship1_x + @ship1[0] > 10 do
              ship1_x = rand(1..10)
            end
          end
          redo   
        end  
      end

      #puts "Gorisontal ship1_x: #{ship1_x} "
      #puts "Gorisontal ship1_y: #{ship1_y} "

      for i in (0..@ship1[0]-1)
        field[ship1_y][ship1_x+i]=@ship1[0]
        if ship1_y == 1
          field[ship1_y+1][ship1_x+i] = "R"
          elsif ship1_y == 10
          field[ship1_y-1][ship1_x+i] = "R" 
          else
          field[ship1_y+1][ship1_x+i] = "R"
          field[ship1_y-1][ship1_x+i] = "R"
        end 

        if i==0
          if ship1_x > 1 
            if ship1_y!=10
            field[ship1_y+1][ship1_x-1] = "R"
            end
            field[ship1_y][ship1_x-1] = "R"
          end
          if ship1_y > 1 && ship1_x > 1
            field[ship1_y-1][ship1_x-1] = "R"
          end
          
        end

        if i==@ship1[0]-1 && i+ship1_x < 10
          if ship1_y > 1
            field[ship1_y-1][ship1_x+@ship1[0]] = "R"
          end
          field[ship1_y][ship1_x+@ship1[0]] = "R"
          if ship1_y!=10
            field[ship1_y+1][ship1_x+@ship1[0]] = "R"
          end
        
        end

      end

    end

    
      #11.times do |el|
        #puts field[el].join(" ")
      #end
      ships_field.set_field(field)
  end  

end
s4=Ship.new("4")
s4.ship_place(f)
s3=Ship.new("3")
s3.ship_place(f)
s3.ship_place(f)
s2=Ship.new("2")
s2.ship_place(f)
s2.ship_place(f)
s2.ship_place(f)
s1=Ship.new("1")
s1.ship_place(f)
s1.ship_place(f)
s1.ship_place(f)
s1.ship_place(f)
f.print_field
#=end