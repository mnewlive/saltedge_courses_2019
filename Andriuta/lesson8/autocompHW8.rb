require "pry"
class Car
	attr_reader :coefd, :acoefp
	attr_accessor :model, :engine, :weight, :tank, :gasleft

	
	def initialize(model, engine, weight, tank)
	@model = model
	@engine = engine.to_f
	@weight = weight.to_f
	@tank = tank.to_f
	@coefd = coefd
	@acoefp = acoefp
	@avgcons = avgcons
	@gasleft = gasleft
	end
	

	def coefd
		coefd = @weight / 1230
		coefd.round(2)
	end
	
	def acoefp
		acoefp = @weight / 700
		acoefp.round(2)
	end
	
	def avgcons
		avgcons = @weight * @engine * coef 	
		avgcons.round(2)
	end 
		
	def ratio
		puts "Please enter the amout of gas left"
		gasleft = gets.chomp.to_f
		ratio = gasleft / @tank
		ratio.round(2)
	end
	
	def status      #attention here
	gasleft = rand(0..@tank)
	{
		coefd: coefd,
		avgcons: avgcons,
		gasleft: gasleft
		
	}
	end

end

	

class Bmwd < Car
	ETYPE = "Diesel"
	def initialize(etype, *x)
		@etype = etype
		super(*x)
	end
	def coef  
		@coef = @coefd 
	end
	
	def ttngs 
	puts "Please enter the amount fuel left so I can count the distance to the next gas station "
	@gasleft = gets.chomp.to_i
	ttngs = gasleft / @avgcons 
	ttngs.round(2)
	end

end	

class Ard < Car
	ETYPE = "Diesel"
	def initialize(etype, *x)
		@etype = etype
		super(*x)
	end
	
	def coef 
		@coef = @coefd / 2
	end
	
	def ttngs 
	puts "Please enter the amount fuel left so I can count the distance to the next gas station"
	@gasleft = gets.chomp.to_i
	ttngs = gasleft / @avgcons 
	end


end	

class Arp < Car
	ETYPE = "Petrol"
	def initialize(etype, *x)
		@etype = etype
		super(*x)
	end
	 
	def coef 
		@coef = @acoefp / 1.5
	end 
	
	def ttngs 
	puts "Please enter the amount fuel left so I can count the distance to the next gas station"
	@gasleft = gets.chomp.to_i
	ttngs = gasleft / @avgcons 
	end

end	


	
bmw5 = Bmwd.new("Diesel", "e39", "3.0", 1510, 60)
bmw7 = Bmwd.new("Diesel", "e65", "3.0", 2480, 84)
alr = Ard.new("Diesel", "159", "1.9", 1610, 70)
alrg = Arp.new("Petrol", "gul", "2.0", 1580, 58)
binding.pry	



