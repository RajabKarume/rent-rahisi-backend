class LandlordSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name
  has_many :apartments
end
