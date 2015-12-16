#!/usr/bin/env ruby

input = File.open("input.txt").readlines.map(&:chomp)

puts input.select!{|str|
  lions = str.scan(/[aeiou]/).count >= 3
  tigers = str.scan(/(\w)\1{1}/).any?
  bears = str.scan(/ab|cd|pq|xy/).empty?
  lions && tigers && bears #OHMY
}.count
