class Brewery < ApplicationRecord
    has_many :users, through: :saved_breweries
end
