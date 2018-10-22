class AddCasesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :state_id, :string
    add_column :products, :scene_id, :string
  end
end
