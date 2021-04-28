class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url
end
