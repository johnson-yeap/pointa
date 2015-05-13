class CreateSpis < ActiveRecord::Migration
  def change
    create_table :spis do |t|
      t.references :department, index: true
      t.references :course_component, index: true
      t.integer :count

      t.timestamps
    end
  end
end
