class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # if this restaurant destroy, all the comment will be destroyed
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
