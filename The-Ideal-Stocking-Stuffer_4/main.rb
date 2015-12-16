#!/usr/bin/env ruby
require 'digest'

lowest = 0
found = false
until found
  x = Digest::MD5.hexdigest("bgvyzdsv#{lowest}")
  if x[0..4] == "000000"
    found = true
  else
    lowest += 1
  end
end
puts lowest
