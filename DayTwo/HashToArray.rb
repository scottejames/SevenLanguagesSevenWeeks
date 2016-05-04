#!/usr/bin/ruby

ages = {'Scott' => 42, 'Anna' => 21,'Thomas' => 16}

puts ages
a = []
ages.each do |key, value|
	a.push(value)
	#print (" key : #{key} value : #{value}")
end
puts(a)