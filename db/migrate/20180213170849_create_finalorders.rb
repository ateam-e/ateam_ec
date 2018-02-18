class CreateFinalorders < ActiveRecord::Migration[5.1]
  def change
    create_table :finalorders do |t|
      t.string :username
      t.integer :phonenumber
      t.string :address
      t.string :email
      t.string :delivery
      t.string :payment
      t.string :gift

      t.timestamps
    end
  end
end
