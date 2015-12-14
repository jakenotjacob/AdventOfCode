#!/usr/bin/env ruby

input = File.open("../input.txt").readlines.first.chomp.split(//).map{|v| v == "(" ? 1 : -1 }

#wtf is this

floor = 0
index = 0
until floor < 0
  index += 1
  floor += input.shift
end
puts index
