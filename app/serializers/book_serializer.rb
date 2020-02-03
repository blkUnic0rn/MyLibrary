class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :rating, :review, :editable
  # has_one :user
  has_many :favorites

  def editable
    scope == object.user
  end
end
