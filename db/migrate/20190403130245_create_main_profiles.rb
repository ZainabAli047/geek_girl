class CreateMainProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :main_profiles do |t|
      t.string :f_name
      t.string :l_name
      t.boolean :age_above18
      t.integer :age
      t.string :city
      t.string :hobbies
      t.string :gender
      t.string :about

      t.timestamps
    end
  end
end
