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

    def create
        @contract = Contract.create(contract_params)
        if @contract && helpers.user_type == 'Worker'
            redirect_to root_path
        else
            redirect_to new_job_contract_path(@job.id)
        end
    end

    def show
        @worker = Worker.find_by(id: params[:worker_id])
        @contract = Contract.find_by(id: params[:id])
    end

    private

    def contract_params
        params.require(:contract).permit(
            :start_date,
            :end_date,
            :job_id,
            :worker_id
        )
    end

end