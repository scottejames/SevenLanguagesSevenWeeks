#!/usr/bin/ruby

b=[]

print("using each\n")
(1..16).each do |a| 
	b.push(a)
	if b.length == 4 
		print("#{b} \n")
		b=[]
	end
end

print("using slice\n")

(1..16).each_slice(4) do |a|
	print("#{a} \n")
end