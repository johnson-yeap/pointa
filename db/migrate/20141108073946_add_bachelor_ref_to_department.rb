class AddBachelorRefToDepartment < ActiveRecord::Migration
  def change
    add_reference :departments, :bachelor, index: true
  end
end
