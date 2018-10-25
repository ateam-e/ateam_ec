class Customer < ApplicationRecord
  has_secure_password
  mount_uploader :image, ImageUploader
  # 個々の記述大切です

  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :dateofbirth, {presence: true}

  validates :address, {presence: true}

end
