class Course < ActiveRecord::Base
  belongs_to :department
  belongs_to :course_component

  has_many :enrollments
  has_many :students, through: :enrollments
end
