class AddForeignKeysToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :client_id, :integer
    add_column :workouts, :trainer_id, :integer
  end
end
