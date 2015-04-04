class CreateAcademicYearSemesters < ActiveRecord::Migration
  def change
    create_table :academic_year_semesters do |t|
      t.references :academic_year, index: true
      t.references :semester, index: true

      t.timestamps
    end
  end
end
