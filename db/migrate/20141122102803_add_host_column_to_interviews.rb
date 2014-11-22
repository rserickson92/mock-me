class AddHostColumnToInterviews < ActiveRecord::Migration
  def change
  	add_column :interviews, :host, :integer
  end
end
