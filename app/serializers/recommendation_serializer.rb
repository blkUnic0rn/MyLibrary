class RecommendationSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
