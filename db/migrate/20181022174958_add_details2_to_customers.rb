class AddDetails2ToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :string
  end
end
