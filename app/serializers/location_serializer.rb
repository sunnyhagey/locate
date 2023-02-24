class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :image, :description
end
