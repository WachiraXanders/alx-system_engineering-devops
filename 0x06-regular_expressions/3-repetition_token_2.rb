#!/usr/bin/env ruby
input = ARGV[0]
pattern = /hbt+n/
matches = input.scan(pattern)
matches.each { |match| print match}
puts
