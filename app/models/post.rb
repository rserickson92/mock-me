class Post < ActiveRecord::Base
	belongs_to :user

	def self.get_all
		reqs = []
		posts = Post.all
  	posts.each do |post|
  		reqs << {body: post.body}
  	end
  	reqs
	end
end
