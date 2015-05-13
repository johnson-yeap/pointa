class AddRequiredChToSpis < ActiveRecord::Migration
  def change
    add_column :spis, :required_ch, :integer
  end
end
