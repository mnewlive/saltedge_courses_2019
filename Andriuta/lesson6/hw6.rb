" Home work
1. Create an array of numbers
   1.1. Display the index of the maximum number
   1.2. Display all numbers which are divided by 2
or 3
   1.3. Display all numbers which are not multiple
of 6
   1.4. Find out if your array contains number 16
or 26.
"
1.1
arr = (1..20).to_a
arr.index(arr.max)


1.2

arr.map do |e|
	e % 3 == 0 && % 2 == 0
end

1.3
arr2 = arr.map do |e|
	e % 6 == 0
	end
	
1.4 
arr = (1..20).to_a
arr.include?(16)
arr.include?(26)

OR

arr.select {|a| [16, 26].include? a}.any?


"2. Create an array of hashes
   Each hash should contain the keys: title,
artist, year
example: [
     { title: 'Mad World', artist: 'Gary Jules',
year: 1998 },
     { title: 'California Gurls', artist: 'Katy
Perry', year: 2000 },
     { title: 'Needle in the Hay', artist: 'Elliott
Smith', year: 1997 },
     { title: 'Happy', artist: 'Pharrell Williams',
year: 2017 },
     { title: 'Some song', artist: 'Pharrell
Williams', year: 2018 }
]
   2.1. Display all titles
   2.2. Display all songs from 90'
   2.3. Display artists names which have more then
1 song
   2.4. Display the oldest song
"
2.1 




arr = [{:title => 'Mad World', :artist => 'Gary Jules',
:year => '1998' } , {:title => 'California Gurls', :artist => 'Katy Perry',
:year => '2000' } , {:title => 'Needle in the Hay', :artist => 'Elliot Smith',
:year => '2017' } , {:title => 'Some song', :artist => 'Pharell Williams',
:year => '2018' }]
k = arr.map { |value| value[:title]}



2.2

array = [{:title => 'Mad World', :artist => 'Gary Jules',
:year => '1998' } , {:title => 'California Gurls', :artist => 'Katy Perry',
:year => '2000' } , {:title => 'Needle in the Hay', :artist => 'Elliot Smith',
:year => '2017' } , {:title => 'Some song', :artist => 'Pharell Williams',
:year => '2018' }]


"решение череz each or puts"

arr.each {|hash| puts hash if hash[:year] > 1900 && hash[:year] < 2000}



2.3

"используется метод group by, группируешь первые значения, "
b = []
arr.each do |hash| 
	if b.keys.iclude? hash[:artist]
		b[hash[:artist]]+=1
		else
		b[hash[:artist]]=1
		end
end

2.4
sort.by 



	