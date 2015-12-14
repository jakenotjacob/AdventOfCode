#!/usr/bin/env ruby

input = File.open("input.txt").readlines.first
ones = input.count("(")
negs = input.count(")")
answer = ones-negs
