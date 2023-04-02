class User < ApplicationRecord
    has_secure_password
    has_many :reviews,  dependent: :destroy
    has_many :houses, through: :reviews

   

    validates :name, presence: true, uniqueness: true, length: {minimum: 4}
    validates :email,presence: true, uniqueness: true
    validates :password, presence: true
end
