class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
end


# これはgemを使ったときの話か
