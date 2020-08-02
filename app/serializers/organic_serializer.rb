class OrganicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :users_waste
end
