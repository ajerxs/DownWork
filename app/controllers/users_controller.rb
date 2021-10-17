class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        # change this with once sessions can be set with type
        if @user.type == "client"
            redirect_to client_path(@user)
        else
            redirect_to worker_path(@user)
        end
    end

    def signin
    end

    private

    def user_params
        params.require(:user).permit(
            :first_name,
            :last_name,
            :email,
            :password,
            :bio,
            :type
        )
    end

end
