class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        # change this with once sessions can be set with type, maybe insert a flash message if failed to create
        if @user.type == "client"
            redirect_to '/'
        else
            redirect_to '/'
        end
    end

    def edit
    end

    def update
    end

    def signin
    end

    def signedin
        @user = User.find_by(email: params[:email])
        if @user && @user.password == params[:password]
            redirect_to '/signin'
        else
            session[:user_id] = @user.id
            redirect_to root_path
        end
    end

    def signout
        session.delete(:user_id)
        redirect_to root_path
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
