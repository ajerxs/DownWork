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
            @client = Client.find_by(email: helpers.current_user.email)
        else
            redirect_to '/'
        end
    end

    def create
        @job = Job.create(job_params)
        if @job
            redirect_to jobs_path
        else # render page with flash message
            redirect_to new_job_path
        end
    end

    def destroy
        @job = Job.find_by(id: params[:id])
        @job.destroy
        redirect_to jobs_path
    end

    private

    def job_params
        params.require(:job).permit(
            :title,
            :description,
            :salary,
            :needed_workers,
            :client_id
        )
    end

end