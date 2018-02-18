class ChangeDatatypeCategoryIdOfProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :category_id, :string

    # データ型の変更ができなかった
  end
end
