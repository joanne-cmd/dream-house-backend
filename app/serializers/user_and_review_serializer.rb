class UserAndReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :reviews
end
