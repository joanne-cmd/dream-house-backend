class User < ApplicationRecord
    has_many :reviews
    has_many :houses, through: :reviews
end
