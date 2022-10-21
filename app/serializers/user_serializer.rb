class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :photo, :email, :created_at
end
