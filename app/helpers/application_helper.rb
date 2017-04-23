module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if user.images
			user.images
		else
		"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=40"
		end
	end

	def timeago(time, options={} )		
		options[:class] ||= "timeago"
		content_tag(
			:time,
			time.to_s,
			options.merge(datetime: time.getutc.iso8601)
			) if time 
	end
end
