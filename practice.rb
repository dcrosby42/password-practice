#!/usr/bin/env ruby
require 'io/console'

default = 7

def prompt_password(prompt=">", io=$stdin)
  print "#{prompt} "
  x = io.noecho { io.gets.strip }
  print "\n"
  x
end


passwd = prompt_password "ENTER NEW PASSWORD:"
print "# reps [#{default}]: "
rstr = gets
reps = rstr.strip.to_i
if reps == 0
  reps = default
end
puts "Get it right #{reps} times in a row."

n=reps

while n > 0
  txt = prompt_password "#{n} reps to go:"
  if txt == passwd
    n -= 1
  else
    n=reps
    puts "!! WRONG.  Start over."
  end
end

