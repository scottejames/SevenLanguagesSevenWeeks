#!/usr/bin/ruby

random = rand(10)

puts "number is #{random}"

puts "what is your guess?"
response=gets

puts "Response is #{response}"

if response.to_i > random
	puts 'Your guess is too high'
else
	puts 'Your guess is too low'
end