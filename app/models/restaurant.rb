class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # if this restaurant destroy, all the comment will be destroyed
end
