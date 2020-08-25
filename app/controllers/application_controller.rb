class ApplicationController < ActionController::Base
    def current_trainer
        @trainer ||= Trainer.first
    end

end
