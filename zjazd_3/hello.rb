#!/usr/bin/env ruby

def hello
  full_name = [ARGV[0], ARGV[1]].join(" ")
  puts "Hello #{full_name}!"
end

hello
