class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :editable

  has_one :favbook
  has_one :bookfav

  def editable
    scope == object.favorite.favbook
  end
end
