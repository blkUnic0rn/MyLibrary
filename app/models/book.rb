class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favbooks,
           through: :favorites,
           source: :favbooks
end
