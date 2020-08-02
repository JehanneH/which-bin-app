class CreateGarbages < ActiveRecord::Migration[6.0]
  def change
    create_table :garbages do |t|
      t.string :name

      t.timestamps
    end
  end
end
