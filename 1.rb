puts "enter the apt number between 1 and 90"
number = gets.chomp.to_i

if number <= 21
	puts "#{number} is in 1st entrance"
elsif number <= 48
	puts "#{number} is in 2st entrance"
elsif number <= 90
	puts "#{number} is in 3st entrance"
else
	puts "the apt number is not in this house"
end	
