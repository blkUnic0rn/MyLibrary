class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :rating, :review
  has_one :user
end
