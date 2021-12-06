class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :status, :name, :city, :state
end
