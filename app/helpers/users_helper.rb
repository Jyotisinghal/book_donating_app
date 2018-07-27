require 'digest/md5'
module UsersHelper
	#Returns the Gravatar for the give user.
	def gravatar_for(user, options = { size: 80 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://www.gravatar.com/avatar/HASH/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
		
	end

	
end
