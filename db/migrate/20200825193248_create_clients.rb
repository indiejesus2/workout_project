class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :weight
      t.integer :goal_weight
      t.text :note

      t.timestamps
    end
  end
end
