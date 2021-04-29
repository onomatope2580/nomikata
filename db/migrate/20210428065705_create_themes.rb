class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string :themes
      t.references :game, foreign_key: true
      t.timestamps
    end
  end
end
