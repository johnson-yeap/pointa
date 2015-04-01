class AddGradeRefToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :grade, index: true
  end
end
