class PostsController < ApplicationController
	before_action :authorize
  def index
  	@post = Post.new
  	@reqs = Post.get_all
  end

  def create
  	params = posts_params
  	post = Post.new(body: params[:body], user: current_user)
  	if post.save
	  	render partial: "post", locals: { locals: {
	  		username: current_user.name,
	  		uid: current_user.id,
	  		body: params[:body]
	  	} }
	  else
	  	render "index"
	  end
  end

  def destroy
    
  end

  private

  def posts_params
  	params.require(:post)
  end

end
