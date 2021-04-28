class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url
  has_many :notes
end
