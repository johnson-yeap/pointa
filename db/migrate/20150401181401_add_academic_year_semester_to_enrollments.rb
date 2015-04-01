class AddAcademicYearSemesterToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :academic_year_semester, index: true
  end
end
