class SignupSerializer < ActiveModel::Serializer
  #attributes :id
  attributes :id, :name, :difficulty
  
  def name
    object.activity.name
  end

  def difficulty
    object.activity.difficulty
  end
end
