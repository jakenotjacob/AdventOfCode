#!/usr/bin/env ruby

input = File.open("input.txt")

def plant(grid, x, y)
  new_x = "#{x}"
  new_y = "#{y}"
  begin
  grid[new_x][new_y] = true
  rescue NoMethodError
    grid[new_x] = {new_y=>true}
  end
end


grid = {"0"=> {"0"=> true}}
x=0
y=0
while direction = input.getc
  case direction
  when "^"
    y+=1
  when "v"
    y-=1
  when ">"
    x+=1
  when "<"
    x-=1
  end
  plant(grid, x, y)
end

puts grid.map{|k,v|v.flatten}.flatten.count(true)
