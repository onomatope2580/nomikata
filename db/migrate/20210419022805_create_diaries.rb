class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.date :date, null: false
      t.integer :alcohol_amount
      t.string :title
      t.text :comment
      t.integer :small_beer
      t.integer :large_beer
      t.integer :japanese_sake
      t.integer :wine
      t.integer :shochu
      t.integer :wisky
      t.integer :another_percentage
      t.integer :another_amount
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
