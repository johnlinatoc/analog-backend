class User < ApplicationRecord
    has_many :orders
    has_many :boardgames, through: :orders
end
