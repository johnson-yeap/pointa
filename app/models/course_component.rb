class CourseComponent < ActiveRecord::Base
  has_many :courses

  has_many :spis
  has_many :departments, through: :spis
end
