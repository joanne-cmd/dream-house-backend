class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :house_id
  
end
