require_relative "errors"

module Validators
	def validate_name!
	  return if @name.length > 0
	  raise Error::Client::InvalidName.new("Name should contain at least 1 character")
	end 	
	
	def validate_password!(password)
		return if @password = password
		raise Error::Client::InvalidPassword.new("Password doesn't match")
	end
end