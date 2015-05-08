class AddCourseComponentRefToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :course_component, index: true
  end
end
