# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :given_name,
             :surname, :dob, :book_count, :reader_status
end
