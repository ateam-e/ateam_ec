class Customer < ApplicationRecord
  has_secure_password
  mount_uploader :image, ImageUploader
  # 個々の記述大切です
end
