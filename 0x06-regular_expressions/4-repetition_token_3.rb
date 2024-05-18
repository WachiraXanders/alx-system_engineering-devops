#!/usr/bin/env ruby
if ARGV.length != 1
  puts "Usage: #{$0} <string>"
  exit 1
end
input_sting = ARGV[0]
pattern = /^hbt*n$/
matches = input.scan(pattern)
matches.each { |match| print match }
puts
