class ContractsController < ApplicationController

    def index
        @contracts = helpers.current_user.contracts
    end

    def new
        @worker = Worker.find_by(id: helpers.current_user.id)
        @job = Job.find_by(id: params[:job_id])
        if @job.contracts.detect {|contract| contract.worker.full_name == @worker.full_name}
            redirect_to worker_contract_path(@worker.id, @job.id)
        else
            @contract = Contract.new
        end
    end

    def show
        @worker = Worker.find_by(id: params[:worker_id])
        @contract = Contract.find_by(id: params[:id])
    end

end