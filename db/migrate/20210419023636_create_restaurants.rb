class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :comment
      t.string :address
      t.references :diary, foreign_key: true, null: false
      t.timestamps
    end
  end
end
