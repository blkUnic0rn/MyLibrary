# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :given_name,
             :surname, :dob, :book_count, :reader_status

  has_many :books, through: :favorites
  has_many :favorites
end
