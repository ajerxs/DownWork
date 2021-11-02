class ContractsController < ApplicationController

    def new
        @worker = Worker.find_by(id: helpers.current_user.id)
        @job = Job.find_by(id: params[:job_id])
        if @job.contracts.detect {|contract| contract.worker.id == @worker.id}
            @contract = @job.contracts.detect {|contract| contract.worker.id == @worker.id}
            redirect_to worker_contract_path(@worker.id, @contract.id)
        else
            @contract = Contract.new
        end
    end

    def create
        @job = Job.find_by(id: params[:job_id])
        @worker = Worker.find_by(id: helpers.current_user.id)
        @contract = Contract.new(contract_params)
        if @contract.save && helpers.user_type == 'Worker'
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @worker = Worker.find_by(id: params[:worker_id])
        @contract = Contract.find_by(id: params[:id])
        @job = @contract.job
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