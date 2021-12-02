class BreweryShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :zip, :url
end
