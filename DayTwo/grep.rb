#!/usr/bin/ruby
regexp="son"
File.open("./sampleFile.txt", "r+").each_line do |line|
	#puts "> #{line}"
	puts "#{line}" if /#{regexp}/.match(line)
end

