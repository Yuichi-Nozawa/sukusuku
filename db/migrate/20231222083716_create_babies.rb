class CreateBabies < ActiveRecord::Migration[7.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :gender
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.timestamps
    end
  end
end
