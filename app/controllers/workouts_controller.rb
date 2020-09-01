class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = current_trainer.workouts.new(workout_params)
        @workout.save
        redirect_to workout_path(@workout)
    end

    def show
        set_workout
    end
    
    def edit
        set_workout
    end

    def update
        set_workout
        @workout.update(workout_params)
        redirect_to workout_path(@workout)
    end

    def destroy
        set_workout
        @workout.delete
        redirect_to workouts_path
    end


    private

    def set_workout
        @workout = Workout.find_by_id(params[:id])
    end

    def workout_params
        params.require(:workout).permit(:date, :calories_burned, :description, :workout_type, :client_id, :trainer_id, client_attributes: [:name, :weight, :goal_weight, :note])
    end

end
