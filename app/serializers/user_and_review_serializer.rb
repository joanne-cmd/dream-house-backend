class UserAndReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest

  has_many :reviews
end
