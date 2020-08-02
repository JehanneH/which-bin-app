class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :password_digest, :score
  has_many :users_waste
end
