class Course < ActiveRecord::Base
  belongs_to :department

  has_many :enrollments
  has_many :students, through: :enrollments
end
