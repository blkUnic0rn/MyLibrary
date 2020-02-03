class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favbooks,
           through: :favorites,
           # class_name: 'User',
           # foreign_key: 'user_id',
           # inverse_of: 'bookfavs',
           source: :favbooks

end
