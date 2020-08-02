class CreateRecyclings < ActiveRecord::Migration[6.0]
  def change
    create_table :recyclings do |t|
      t.string :name

      t.timestamps
    end
  end
end
