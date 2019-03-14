#!/usr/bin/ruby
require 'rubygems'
require 'json'
require 'pp'

class Human
  attr_accessor :fname, :lname

  def initialize (fname, lname)
    @fname = fname
    @lname = lname

  end
end

file = open("/Users/nicolaiandriuta/saltedge_courses_2019/Andriuta/test/studentlist.json")
json = file.read

parsed = JSON.parse(json)


@inputFullName = []
@humanArray = []

parsed.each do |key|
  @inputFullName << key["FName"] + " " + key["LName"]
end

parsed.each do |key1|
  parsed.each do |key2|
    human = Human.new(key1["FName"], key2["LName"])
    unless @inputFullName.include?(human.fname + " " + human.lname)
      @humanArray << human
    end
  end
end

print @humanArray

@humanArray.each do |human|
  #pp human.fname + " " + human.lname
  File.write('/Users/nicolaiandriuta/saltedge_courses_2019/Andriuta/test/result.txt', human.fname + " " + human.lname + "\n", mode: 'a')
  #puts(human)
end



