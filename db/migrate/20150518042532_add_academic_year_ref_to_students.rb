class AddAcademicYearRefToStudents < ActiveRecord::Migration
  def change
  	add_reference :students, :academic_year, index: true
  end
end
