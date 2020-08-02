class CreateUsersWastes < ActiveRecord::Migration[6.0]
  def change
    create_table :users_wastes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organic, null: false, foreign_key: true
      t.references :garbage, null: false, foreign_key: true
      t.references :recycling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
