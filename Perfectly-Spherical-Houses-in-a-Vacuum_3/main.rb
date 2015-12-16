#!/usr/bin/env ruby

input = File.open("input.txt").readlines.first.chomp.scan(/./)

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
santa_1 = []
santa_2 = []
while c = input.shift
  santa_1 << c
  santa_2 << input.shift
end
[santa_1, santa_2].each do |s|
  x = 0
  y = 0
  while direction = s.shift
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
end

puts grid
puts grid.map{|k,v|v.flatten}.flatten.count(true)
