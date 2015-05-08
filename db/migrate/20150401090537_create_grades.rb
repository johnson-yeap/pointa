class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.decimal :points, :precision => 3, :scale => 2

      t.timestamps
    end
  end
end
