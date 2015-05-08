class AddCgpaToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cgpa, :decimal, precision: 3, scale: 2
  end
end
