class BortComputer
	def initialize(name, weight, engine_volume, engine_petrol)
		@name = name
		@weight = weight
		@engine_volume = engine_volume 
		@engine_petrol = engine_petrol 
		@tank_volume = tank_volume
	end
	def average_consumption
		@weight * @engine_volume * koeff
	end
	
	def koeff
	if @engine_petrol == :diesel
		@weight / 1230
	else
		@engine_petrol == :engine_petrol
	end
end

def fuel_ratio(current_fuel_volume)
	current_fuel_volume / tank_volume 
end

def ttngs(current_fuel_volume)
	current_fuel_volume / average_consumption 
end

def status 
	current_volume = rand(0..@tank_volume)
	{
		average_consumption: average_consumption,
		fuel_ratio: fuel_ratio,
		
	}

pc = Bort.Computer.new("bmw 5 e 39", )