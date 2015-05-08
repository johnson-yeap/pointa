class Student < ActiveRecord::Base
	belongs_to :department
	has_one :user

	has_many :enrollments, dependent: :destroy
  	has_many :courses, through: :enrollments
  	has_many :academic_year_semesters, -> { distinct }, through: :enrollments

  	accepts_nested_attributes_for :enrollments
end
