class Appointment < ActiveRecord::Base
  belongs_to :lecturer
  belongs_to :course
end
