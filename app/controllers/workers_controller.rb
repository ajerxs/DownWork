class WorkersController < ApplicationController
    before_action :require_login

    def index
        @workers = Worker.all
    end

    def show
        @worker = Worker.find_by(id: params[:id])
    end

end