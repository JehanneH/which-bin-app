class UsersWasteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :organic_id, :garbage_id, :recycling_id

end