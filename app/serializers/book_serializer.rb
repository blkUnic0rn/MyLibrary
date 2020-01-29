class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :rating
  # has_one :user
end
