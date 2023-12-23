class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.integer :milk
      t.boolean :omutsu, default: false
      t.string :body_temperature
      t.text :memo
      t.references :baby, foreign_key: true
      t.timestamps
    end
  end
end
