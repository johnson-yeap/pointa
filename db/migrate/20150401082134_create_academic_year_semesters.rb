class CreateAcademicYearSemesters < ActiveRecord::Migration
  def change
    create_table :academic_year_semesters do |t|
      t.belongs_to :academic_year, index: true
      t.belongs_to :semester, index: true

      t.timestamps
    end
  end
end
