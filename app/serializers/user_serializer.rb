class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id, :save_state
end
