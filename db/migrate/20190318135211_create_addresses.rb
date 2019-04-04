class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :city
      t.string :country
      t.string :state

      t.timestamps
    end
  end
end
