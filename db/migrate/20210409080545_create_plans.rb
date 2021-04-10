class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date :date, null: false
      t.text :schedule
      t.integer :alcohol_amount_plan
      t.references :user, null: false, foreign_key:true
      t.timestamps
    end
  end
end
