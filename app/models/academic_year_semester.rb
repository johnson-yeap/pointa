class AcademicYearSemester < ActiveRecord::Base
	belongs_to :semester
	belongs_to :academic_year

	has_many :enrollments
	has_many :students, through: :enrollments

	def virtual_name
    	"#{academic_year.name} / #{semester.name}"
  	end
end
