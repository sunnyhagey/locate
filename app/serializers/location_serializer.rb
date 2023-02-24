class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :address, :image, :description
end
