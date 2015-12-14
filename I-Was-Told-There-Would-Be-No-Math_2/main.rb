#!/usr/bin/env ruby

boxes = File.readlines("input.txt").map(&:chomp)

total_sq_paper = 
  boxes.map!{ |box|
    l,w,h = box.split("x").map(&:to_i)
    surface_area = 2*(l*(w+h)+(w*h))
    small_side = [l,w,h].min(2).inject(&:*)
    surface_area + small_side
  }.inject(&:+)

