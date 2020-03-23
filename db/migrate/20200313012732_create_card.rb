class CreateCard < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :set
      t.text :description
      t.integer :amount_cents

      t.timestamps :null => true
    end
  end
end
