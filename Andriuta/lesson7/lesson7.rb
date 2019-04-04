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

