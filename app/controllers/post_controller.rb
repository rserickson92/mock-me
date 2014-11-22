class PostController < ApplicationController
  def index
  	@reqs = []
  	posts = Post.all
  	posts.each do |post|
  		@reqs << post.body
  	end
  end

  def new
  end

  def destroy
  end
end
