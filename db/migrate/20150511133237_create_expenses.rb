class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :money
      t.string :type

      t.timestamps null: false
    end
  end
end
