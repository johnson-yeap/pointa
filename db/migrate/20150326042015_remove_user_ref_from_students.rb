class RemoveUserRefFromStudents < ActiveRecord::Migration
  def change
    remove_reference :students, :user, index: true
  end
end
