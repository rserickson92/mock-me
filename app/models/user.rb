class User < ActiveRecord::Base
	has_many :posts
	has_and_belongs_to_many :interviews
	has_secure_password validations: false

	def get_interviews
		interviews = []
		self.interviews.each do |interview|
			interviews << {
				host: User.find(interview.host).name, 
				users: interview.get_users, 
				iid: interview.id
			}
		end
		interviews
	end
end
