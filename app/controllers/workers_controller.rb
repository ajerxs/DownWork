class WorkersController < ApplicationController

    def index
        @workers = Worker.all
    end

    def show
        @worker = Worker.find_by(params[:id])
    end

end