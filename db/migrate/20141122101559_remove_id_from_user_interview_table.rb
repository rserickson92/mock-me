class RemoveIdFromUserInterviewTable < ActiveRecord::Migration
  def change
  	remove_column :user_interview, :id
  end
end
