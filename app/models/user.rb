class User < ApplicationRecord
    has_many :reviews,  dependent: :destroy
    has_many :houses, through: :reviews
end
