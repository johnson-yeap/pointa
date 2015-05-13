class Department < ActiveRecord::Base
	has_many :students
	has_many :courses
	belongs_to :bachelor

	has_many :spis
	has_many :course_components, through: :spis
end
