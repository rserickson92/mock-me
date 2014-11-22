class Interview < ActiveRecord::Base
	has_and_belongs_to_many :users

	def get_users
		users = []
		self.users.each do |user|
			users << user.name
		end
		users
	end
end
