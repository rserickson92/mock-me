class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :start_time
      t.integer :length

      t.timestamps
    end
  end
end
