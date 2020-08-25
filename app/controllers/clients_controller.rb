class ClientsController < ApplicationController
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
        set_client
    end
    
    def edit
        set_client
    end

    def update
        set_client
        @client.update(client_params)
        redirect_to client_path(@client)
    end

    def destroy
        set_client
        @client.delete
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
