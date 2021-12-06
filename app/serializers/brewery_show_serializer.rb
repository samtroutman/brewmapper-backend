class BreweryShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :zip, :reviewlink, :status, :blogmap
end
