class User < ActiveRecord::Base

	def self.create_with_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
	    user.uid = auth["uid"]
	    user.name = auth["info"]["name"]
	    user.photo = auth["info"]["image"]
	    user.location = auth["info"]["location"]
	    user.email = auth["info"]["email"]
	    user.oauth_token = auth["credentials"]["token"]
	  end
	end
end
