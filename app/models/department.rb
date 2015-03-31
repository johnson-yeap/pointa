class Department < ActiveRecord::Base
	has_many :students
	has_many :courses
	belongs_to :bachelor
end
