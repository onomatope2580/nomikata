class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.date :date, null: false
      t.integer :alcohol_amount
      t.string :title
      t.text :comment
      t.references :user, foreign_key: true, null: false
      t.references :plan, foreign_key: true, null: false
      t.timestamps
    end
  end
end
