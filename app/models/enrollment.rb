class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  belongs_to :grade
  belongs_to :academic_year_semester

  validates :student, :course, :grade, :academic_year_semester_id, presence: true
end
