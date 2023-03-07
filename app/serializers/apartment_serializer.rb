class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :number_of_houses
  belongs_to :landlord
  has_many :tenants
end
