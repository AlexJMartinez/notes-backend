class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :notes
  has_many :notes
end
