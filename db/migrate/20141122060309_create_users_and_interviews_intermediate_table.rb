class CreateUsersAndInterviewsIntermediateTable < ActiveRecord::Migration
  def change
    create_table :users_and_interviews_intermediate_tables do |t|
    	t.belongs_to :user
    	t.belongs_to :interview
    end
  end
end
