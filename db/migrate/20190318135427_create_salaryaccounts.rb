class CreateSalaryaccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :salaryaccounts do |t|
      t.integer :user_id
      t.integer :salary
      t.string :currency

      t.timestamps
    end
  end
end
