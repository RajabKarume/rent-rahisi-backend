class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :house_number, :phone_number, :rent
  belongs_to :apartment
end
