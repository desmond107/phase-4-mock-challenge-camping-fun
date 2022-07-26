class ActivitySerializer < ActiveModel::Serializer
  #attributes :id
  attributes :id, :name, :difficulty
end
