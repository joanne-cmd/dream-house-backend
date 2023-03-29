class HouseAndReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :desc, :price, :image, :category

  has_many :reviews
end
