class RemoveCountFromSpis < ActiveRecord::Migration
  def change
    remove_column :spis, :count, :integer
  end
end
