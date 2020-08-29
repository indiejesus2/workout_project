class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        @client.save
        redirect_to client_path(@client)
    end

    def show
    end
    
    def edit
    end

    def update
        @client.update(client_params)
        redirect_to client_path(@client)
    end

    def destroy
        @client.destroy
        redirect_to clients_path
    end


    private

    def set_client
        @client = Client.find_by_id(params[:id])
    end

    def client_params
        params.require(:client).permit(:name, :weight, :goal_weight, :note)
    end
end
