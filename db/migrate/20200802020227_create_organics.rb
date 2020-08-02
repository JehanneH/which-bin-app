class CreateOrganics < ActiveRecord::Migration[6.0]
  def change
    create_table :organics do |t|
      t.string :name

      t.timestamps
    end
  end
end
