class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :f_name
      t.text :f_comment
      t.references :diary, foreign_key: true, null: false
      t.timestamps
    end
  end
end
