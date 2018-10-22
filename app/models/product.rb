class Product < ApplicationRecord
  mount_uploader :image, ImageUploader


  validates :name, {presence: true}
  validates :price, {presence: true}
  validates :description, {presence: true}
  validates :image, {presence: true}
  validates :category_id, {presence: true}

end


# これはgemを使ったときの話か
