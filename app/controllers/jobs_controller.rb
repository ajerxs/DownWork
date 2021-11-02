class JobsController < ApplicationController

    def index
        @jobs = Job.all
    end

    def show
        @job = Job.find_by(id: params[:id])
    end

    def new
        if helpers.user_type == "Client"
            @job = Job.new
        else
            redirect_to '/'
        end
    end

    def create
        @job = Job.new(job_params)
        if @job.save && helpers.user_type == 'Client'
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        @job = Job.find_by(id: params[:id])
        @contract = Contract.find_by(job_id: @job.id)
        @contract.destroy
        @job.destroy
        redirect_to root_path
    end

    private

    def job_params
        params.require(:job).permit(
            :title,
            :description,
            :salary,
            :positions,
            :client_id
        )
    end

end
