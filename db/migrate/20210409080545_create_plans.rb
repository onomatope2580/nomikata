class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date :date, null: false
      t.text :schedule
      t.integer :alcohol_amount_plan
      t.integer :small_beer
      t.integer :large_beer
      t.integer :japanese_sake
      t.integer :wine
      t.integer :shochu
      t.integer :wisky
      t.integer :another_percentage
      t.integer :another_amount
      t.references :user, null: false, foreign_key:true
      t.timestamps
    end
  end
end
