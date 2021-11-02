class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            render :new
        end
    end

    def edit
        @user = helpers.current_user
    end

    def update
        @user = helpers.current_user
        if @user.update(user_params)
            redirect_to '/'
        else
            render :edit
        end
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
