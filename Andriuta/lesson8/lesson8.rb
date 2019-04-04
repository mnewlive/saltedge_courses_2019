require "pry"

class Human 
	
	attr_reader :name, :eyes_color, :height, :weight
	attr_writer :name, :eyes_color, :height, :weight
	#attr_accessor этот оператор объеденяет функции вышестоящих 
	def initialize(name, eyes_color, height, weight)
		@gender = self.class::GENDER
		@name = name	
		@eyes_color = eyes_color
		@height = height
		@weight = weight
	end

	
	def self.stay
		puts " I stay "
	end
	
	
	def breathe
		puts "i breathe"
	end


	def eat
		puts "I eat"
	end
		
	def walk
		puts "i walk"
	end
	
	def look
		puts "i look"
	end
end


class Man < Human
	GENDER = "man"
	def initialize(race, *args)
		@race = race 
		super(*args)
	end
		
	def look 
		puts "i look using my #{@race} eyes with #{@eyes_color}"
	end
	
end	

class Woman < Human
	GENDER = "woman"
	def eat
		puts "I eat"
	end
end	

oleg = Man.new("eng", "Oleg", "green", "50", "400")

olea = Woman.new("Olea", "yellow", "35", "500")
binding.pry		

puts "Oleg"



oleg.class  

