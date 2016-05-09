#!/usr/bin/ruby

class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self.size == 0
  end
end

class Fixnum
	def blank?
		false
	end
end

["", "person", nil,2,"Wobble",""].each do |element| 
  puts element unless element.blank? 
end