class Book < ApplicationRecord
	before_save { name.downcase! }
	before_save { writer.downcase! }
	validates :name,    presence: true, uniqueness: { case_sensitive: false	}
	validates :writer,  presence:true,  uniqueness: { case_sensitive: false }
end
