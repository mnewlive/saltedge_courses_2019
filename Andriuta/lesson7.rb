"26.02.19
Функции(методы)"

def hello_world()
	puts "hello world"
end



def sum(a,b)
	return a+b
end

"<<<< можно также без return !!!! "	

def sum(a,b)
	return unless a.is_a?(Numeric) && b.is_a?(Numeric)
		a + b 
end	




"методы записи аргументов"
ex. sum(a, b)



def sum(a, b = 20)
	a+b
end

"запись неограниченного массива"
def sum(*a)
	a.sum 
end

<<< сюда можем добавить неограниченное кол-во переменных - проще высчитывать


def test(a, b, **kwargs)
	puts a
	puts b 
	puts kwargs 
end

написать метод, который будет умножать переданные ему аргументы на 2
в случае если этот аргумент число четное


def double_odd(a)
	num * 2 if num.even?
end



def sum(a, b)
	result = a+ b
	puts result
	result
end





"Argument error"


"Область видимости"
x = 12
def too(a)
	x = 15
	y+x
end
too
x= 20



написать метод, который пишет в консоль hello max , оно принимает аргумент по дефолту max, но иначе пишет hello stasik

def hello(a = "max")
	puts "hello #{a}"
end 



def 


puts "enter your work experience"
exp = gets.chomp.to_i


def experience()
	puts "enter your experience"
	
if exp < 0
	puts "#{exp} is NEGATIVE YOOO NOT COOL BRO STOP BEING NEGATIVE OK?"
elsif exp < 2
	puts "#{exp} is not so negative but still you get ZERO INCREASE HAHA"
elsif exp < 10
	puts "#{exp} congratz bro here's 10% increase "
elsif exp < 20
	puts "#{exp} look at this guy! you get 20% increase mate"
else exp > 20 
	puts "#{exp} damn here's the boss! %25 increase"
end
	
	
	
	


"Понятие BLOCK"
block - это не объект! 
def test
	puts "before block"
	yield 15 if block_given?
	puts "after block"
end

test {|i| puts i}

def many_params(a, b = 1, *array, **kwargs, &block)
	puts a, b 
	puts array 
	puts kwargs 
end

class Array
def our_each(&block)
	for i in self 
	yield i + 1
end
end
end

a = [1, 2, 3]
a.our_each {|elem| puts elem}	


def each_second(a, &block)
	a.each_with_index do |value, index|
		yield value if  block_given? && index.odd?
		end
end
each_second([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) { |elem| puts elem}
	

def each_sorted_key(hash)
	hash.keys.sort.each {|elem| yield elem}
end	
each_sorted_key({aL 1, b: 2, c: 3}) {|elem| puts elem}


p = Proc.new {|elem| puts elem}
p.call("hello world")






errors and exceptions


begin 
	........
	
	rescue _____(syntax error) => ex 
	puts ex
end

begin 
	....
	rescue ______
	else .....
	....
	ensure
	.....
end



begin
	f = File.open(path, "r")
	f=f.read 
	rescue JOEerror => ex 
	puts ex 
	
	ensure
	f.close 
end



Оператор sleep1 - указываем кол-во секунд насколько задержка будет

begin, rescue, ensure
	
	
	
def foo(a)
	500/a
	resuce ZeroDivisionError
end
	
