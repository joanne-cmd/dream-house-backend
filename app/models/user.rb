class User < ApplicationRecord
    has_many :reviews,  dependent: :destroy
    has_many :houses, through: :reviews

    validates :name, presence: true
    validates :email,presence: true, uniqueness: true
end
