require "pry"
require_relative "test"

class TestClass
	extend SomeModule  #include коопирует содержимое innermodule в область видимости нашего инстанса. extend копирует в класс! :: - оператор достать константу(CONSTANT, MyClass, InnerModule, Somemodule)
	
	def hello
		puts "Hello!"
	end

	
	def run!
		binding.pry
		1
		end
	end
	
	class LearnModules
		include SomeModule
	def greeting
		puts CONSTANT 
	end
	
	end
	
	
test = TestClass.new 
test.run!