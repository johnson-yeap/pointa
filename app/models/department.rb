class Department < ActiveRecord::Base
	has_many :students
	belongs_to :bachelor
end
