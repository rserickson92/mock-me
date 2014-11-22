class Post < ActiveRecord::Base
	belongs_to :user

	def self.get_all
		reqs = []
		posts = Post.all
  	posts.each do |post|
  		reqs << {body: post.body, username: post.user.name, uid: post.user_id}
  	end
  	reqs
	end
end
