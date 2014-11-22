class InterviewsController < ApplicationController
  def create
  	poster_id = params[:user_id]
  	if poster_id == current_user.id
  		redirect_to posts_path
  	else
  		interview = Interview.create host: current_user.id
  		poster = User.find(poster_id)
  		interview.users << poster
  		poster.interviews << interview
  		current_user.interviews << interview
  		redirect_to posts_path
  	end
  end

  def new
  end

  def destroy
  end

  def index
  end
end
