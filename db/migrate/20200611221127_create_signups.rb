class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.string :name
      t.string :surname
      t.integer :age

      t.timestamps
    end
  end
end
