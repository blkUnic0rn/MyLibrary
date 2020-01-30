class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :rating, :review, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
