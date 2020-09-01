class TrainersController < ApplicationController
    def index
        @trainers = Trainer.all
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.new(trainer_params)
        if @trainer.save
            redirect_to trainer_path(@trainer)
        else
            @errors = @trainer.errors.messages
            render :new
        end
    end

    def show
        set_trainer
    end
    
    def edit
        set_trainer
    end

    def update
        set_trainer
        if @trainer.update(trainer_params)
            redirect_to trainer_path(@trainer)
        else
            @errors = @trainer.errors.messages
            render :edit
        end
    end

    def destroy
        set_trainer
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
