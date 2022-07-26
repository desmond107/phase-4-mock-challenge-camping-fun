class SingleCamperSerializer < ActiveModel::Serializer
 # attributes :id
 attributes :id, :name, :age
  has_many :activitie
end
