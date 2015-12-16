#!/usr/bin/env ruby

boxes = File.readlines("input.txt").map(&:chomp).map{|b|b.split("x").map(&:to_i)}

total_sq_paper = boxes.map{ |box|
                   l,w,h = box
                   surface_area = 2*(l*(w+h)+(w*h))
                   small_side = [l,w,h].min(2).inject(&:*)
                   surface_area + small_side
                 }.inject(&:+)

total_ribbon = boxes.map{ |box|
  wrap = (box.min(2)*2).inject(&:+)
  bow = box.inject(&:*)
  wrap + bow
}.inject(&:+)

puts "Total paper: #{total_sq_paper}"
puts "Total ribbon: #{total_ribbon}"
