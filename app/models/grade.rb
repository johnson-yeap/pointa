class Grade < ActiveRecord::Base
	has_many :enrollments
end
