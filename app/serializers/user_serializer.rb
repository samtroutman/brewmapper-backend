class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :saved_breweries
end
