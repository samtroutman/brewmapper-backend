class SavedBrewerySerializer < ActiveModel::Serializer
  attributes :id, :username

  def username
    self.object.user.username
  end

end
