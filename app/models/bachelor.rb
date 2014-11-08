class Bachelor < ActiveRecord::Base
	has_many :departments
	has_many :students, through: :departments
end
