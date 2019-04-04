require_relative "./p3"   #эта строка относиться к теме 
class BMWBortComputer < BortComputer
	MARK = "BMW"
end

require "pry"
bmw = BMWBortComputer.new("5 e39", 1510, 3.0, :diesel, 60)
binding.pry
puts 1    #обязательно писать путс1., хз зачем, но иначе работать типа не будет



 