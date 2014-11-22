class RenameUserInterviewTableAgain < ActiveRecord::Migration
  def change
  	rename_table :user_interview, :users_interviews
  end
end
