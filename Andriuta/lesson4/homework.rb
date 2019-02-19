#problem 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
 < ar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ar.each do |number|
	puts number
end >

#problem 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

< new_arrr = ar.select do |number|
	 number.odd?
end

puts new_arrr
>
#problem 4
#Append "11" to the end of the original array. Prepend "0" to the beginning.

< ar << 11 
ar.unshift(0) >

#problem 5
#Get rid of "11". And append a "3".
<
ar.delete(11)
ar << 3
>
#problem 6
#Get rid of duplicates without specifically removing any one value.

<
if.ar_uniq.length == ar.length
	puts " ar does not containt duplicates"
else
	puts "a does contain duplicates"
end
>
#OR second way...
<
ar.uniq
>

#problem 7
#What's the major difference between an Array and a Hash?
<
 puts " Major difference is that Array is organized collection of elements and Hash is unorganized, also Hash contains key pair for referencing by key."
 >

#problem 8
#Create a Hash using both Ruby syntax styles
<
hash = {:gay => 'fagottini'}
>

#problem 9
#1. Get the value of key `:b`.
#2. Add to this hash the key:value pair `{e:5}`
#3. Remove all key:value pairs whose value is less than 3.5
<
p = {a:1, b:2, c:3, d:4}

puts p[:b]

p[:e] = 5

p.delete_if do |f, g|
	g < 3.5
end
>

#problem 10
#Can hash values be arrays? Can you have an array of hashes? (give examples)
<
hash = {Snames: ['Spring', 'Summer', 'Autumn', 'Winter']}

arr = [{Sname: 'Spring'}, {Sname: 'Summer'}, {Sname: 'Autumn'}, {Sname: 'Winter'}]

>

#problem 12
#Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person
<
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contact_data[0]
>

#problem 13
#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

<
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
>

#problem 15
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

<
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?('s')}
>

<
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?('s', 'w')}
>

#problem 16
#Take the following array:and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

<
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |bytwo| bytwo.split}
a = a.flatten
puts a




