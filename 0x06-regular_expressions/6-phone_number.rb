#!/usr/bin/env ruby
input = ARGV[0]
pattern = /^\d{10}$/
if input =~ pattern
  puts input
else
  puts ""
end
