class ReviewAndUserSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :house_id
  
  belongs_to :user
end
