class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :milk
      t.boolean :oshikko, default: false
      t.boolean :unchi, default: false
      t.string :body_temperature
      t.text :memo
      t.references :user, foreign_key: true
      t.references :baby, foreign_key: true
      t.timestamps
    end
  end
end
