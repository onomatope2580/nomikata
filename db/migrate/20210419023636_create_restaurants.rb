class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :r_name
      t.text :r_comment
      t.string :r_address
      t.references :diary, foreign_key: true, null: false
      t.timestamps
    end
  end
end
