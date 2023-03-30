class UserAndReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password

  has_many :reviews
end
