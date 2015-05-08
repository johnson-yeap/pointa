class CreateCourseComponents < ActiveRecord::Migration
  def change
    create_table :course_components do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
