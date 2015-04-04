class Semester < ActiveRecord::Base
	has_many :academic_year_semesters
  	has_many :academic_years, through: :academic_year_semesters
end
