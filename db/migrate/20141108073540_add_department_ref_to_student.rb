class AddDepartmentRefToStudent < ActiveRecord::Migration
  def change
    add_reference :students, :department, index: true
  end
end
