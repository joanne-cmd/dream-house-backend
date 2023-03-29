class User < ApplicationRecord
    has_many :reviews,  dependent: :destroy
    has_many :houses, through: :reviews

    # has_secure_password

    validates :name, presence: true, uniqueness: true, length: {minimum: 4}
    validates :email,presence: true, uniqueness: true
    validates :password_digest, presence: true, uniqueness: true, length: {in: 8..16}
end
