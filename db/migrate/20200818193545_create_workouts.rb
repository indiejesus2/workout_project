class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.text :date
      t.integer :calories_burned
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
