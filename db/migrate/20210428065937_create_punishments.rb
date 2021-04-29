class CreatePunishments < ActiveRecord::Migration[6.0]
  def change
    create_table :punishments do |t|
      t.string :punish_game
      t.text :example
      t.timestamps
    end
  end
end
