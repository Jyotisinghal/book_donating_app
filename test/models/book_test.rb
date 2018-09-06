require 'test_helper'

class BookTest < ActiveSupport::TestCase
 

 def setup
 	@book = Book.new(name: "Example", writer: "Example_writer")
 end

 test "book should be available" do 
 	@book.name = "   "
 	assert_not @book.valid?
 end
 	
end
