class User < ApplicationRecord
    has_secure_password
    has_many :saved_breweries
    has_many :breweries, :through => :saved_breweries
end
