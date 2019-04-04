puts "enter your work experience"
exp = gets.chomp.to_i

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
	
	
	
