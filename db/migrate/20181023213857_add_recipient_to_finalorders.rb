class AddRecipientToFinalorders < ActiveRecord::Migration[5.1]
  def change
    add_column :finalorders, :recipient_id, :integer
  end
end
