class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :lecturer, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
