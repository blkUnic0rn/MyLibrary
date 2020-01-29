# frozen_string_literal: true

class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :given_name,
             :surname, :dob, :book_count, :reader_status

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
