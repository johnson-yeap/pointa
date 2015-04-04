class AcademicYear < ActiveRecord::Base
	has_many :academic_year_semesters
  	has_many :semesters, through: :academic_year_semesters
end
