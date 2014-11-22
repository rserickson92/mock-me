class RenameUserInterviewIntermediateTable < ActiveRecord::Migration
  def change
  	rename_table :users_and_interviews_intermediate_tables, :user_interview
  end
end
