class ClientsController < ApplicationController

    def index
        @clients = Client.all
    end

    def show
        @client = Client.find_by(params[:id])
    end

end