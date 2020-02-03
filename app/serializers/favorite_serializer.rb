class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :editable

  has_one :user
  has_one :book

  def editable
    scope == object.favorite.user
  end
end
