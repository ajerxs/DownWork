class ClientsController < ApplicationController
    before_action :require_login

    def index
        @clients = Client.all
    end

    def show
        @client = Client.find_by(id: params[:id])
    end

end