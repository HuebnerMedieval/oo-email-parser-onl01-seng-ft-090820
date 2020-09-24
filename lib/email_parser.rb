# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize (email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    email_ar = @email_addresses.split(" ")
    email_ar.map! do |email|
      if email[-1] == ","
        email.delete_suffix(",") 
      else
        email
      end
    end
    @email_addresses = email_ar.uniq
    @email_addresses
  end
  
end