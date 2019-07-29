class User < ApplicationRecord
    has_many :orders
    has_many :boardgames, through: :orders
    has_secure_password
end
