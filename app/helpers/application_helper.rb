module ApplicationHelper
	def get_followers(user_id)
		user = User.find(user_id)
		followers = []

		User.all.each do |follower|
			if follower.following.include?(user.id)
				followers.push(follower)
			end
		end
			return followers.count
end
end