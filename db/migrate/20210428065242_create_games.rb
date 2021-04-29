class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :rule
      t.text :explanation
      t.timestamps
    end
  end
end
