class AcademicYearSemester < ActiveRecord::Base
	belongs_to :semester
	belongs_to :academic_year

	has_many :enrollments

	accepts_nested_attributes_for :enrollments
end
