#!/usr/bin/ruby

file = File.open("/tmp/tmp.txt", "w+")
file.puts("this is my file")
file.close()

File.open("/tmp/tmp2.txt", "w+") { |file|
	file.puts("this is my other file")
}

File.open("/tmp/tmp3.txt", "w+") do |file|
	file.puts("this is my last file")
end 