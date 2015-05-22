class Course < ActiveRecord::Base
  belongs_to :department
  belongs_to :course_component

  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :appointments
  has_many :lecturers, through: :appointments

  def to_param
  	code
  end
end
