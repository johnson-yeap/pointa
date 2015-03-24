class Student < ActiveRecord::Base
	belongs_to :department
	has_one :user
end
