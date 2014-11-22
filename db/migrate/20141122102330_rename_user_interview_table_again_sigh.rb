class RenameUserInterviewTableAgainSigh < ActiveRecord::Migration
  def change
  	rename_table :users_interviews, :interviews_users
  end
end
