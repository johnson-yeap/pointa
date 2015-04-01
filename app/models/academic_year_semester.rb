class AcademicYearSemester < ActiveRecord::Base
	has_many :enrollments
end
