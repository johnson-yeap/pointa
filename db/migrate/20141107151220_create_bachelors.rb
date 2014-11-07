class CreateBachelors < ActiveRecord::Migration
  def change
    create_table :bachelors do |t|
      t.string :name

      t.timestamps
    end
  end
end
