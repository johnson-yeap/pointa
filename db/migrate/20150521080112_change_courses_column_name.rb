class ChangeCoursesColumnName < ActiveRecord::Migration
  def change
  	rename_column :courses, :course_code, :code
  end
end
