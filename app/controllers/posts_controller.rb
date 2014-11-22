class PostsController < ApplicationController
  def index
  	@post = Post.new
  	@reqs = Post.get_all
  end

  def create
  end

  def destroy
  end
end
