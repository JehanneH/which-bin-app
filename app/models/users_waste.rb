class UsersWaste < ApplicationRecord
  belongs_to :user
  belongs_to :organic
  belongs_to :garbage
  belongs_to :recycling
end
