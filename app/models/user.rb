# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :books
  has_many :recommendations
  has_many :favorites
  has_many :bookfavs,
           through: :favorites,
           source: :bookfavs
end
