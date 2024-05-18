#!/usr/bin/env ruby

log_file_path = ARGV[0]
pattern =/\[from:(?<sender>[\w+: ]+)\] \[to:(?<receiver>[\w+:]+)\] \[flags:(?<flags>[-\d:]+)\]/
File.open(log_file_path, "r").each_line do |line|
  match = line.match(pattern)
  if match
    sender = match[:sender].gsub(/\s+/, "")
    receiver = match[:receiver].gsub(/\s+/, "")
    flags = match[:flags]
    puts "#{sender},#{receiver},#{flags}"
  end
end
