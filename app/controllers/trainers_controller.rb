class TrainersController < ApplicationController
    def index
        @trainers = Trainer.all
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.new(trainer_params)
        @trainer.save
        redirect_to trainer_path(@trainer)
    end

    def show
    end
    
    def edit
    end

    def update
        @trainer.update(trainer_params)
        redirect_to trainer_path(@trainer)
    end

    def destroy
        @trainer.destroy
        redirect_to trainers_path
    end


    private

    def set_trainer
        @trainer = Trainer.find_by_id(params[:id])
    end

    def trainer_params
        params.require(:trainer).permit(:username, :password)
    end
end
