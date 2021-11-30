class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :zip, :url
end
