require_relative "./p3"   #эта строка относиться к теме 
class BMWBortComputer < BortComputer
	MARK = "AR"


	def koeff
		divider = @engine_petrol == :diesel ? 2 : 1.5 
		super/divider
	end
end


require "pry"
AR = AlfaRomeoBortComputer.new("159", 1610, 1.9, :diesel, 70)
binding.pry
puts 1    #обязательно писать путс1., хз зачем, но иначе работать типа не будет

 