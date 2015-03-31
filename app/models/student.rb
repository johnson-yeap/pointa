class Student < ActiveRecord::Base
	belongs_to :department
	has_one :user

	has_many :enrollments
  	has_many :courses, through: :enrollments

  	accepts_nested_attributes_for :enrollments
end
