class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  belongs_to :academic_year_semester
  belongs_to :grade
end
