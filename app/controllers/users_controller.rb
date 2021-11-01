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
    end

    def update
    end

    # def signin
    # end

    # def signedin
    #     @user = User.find_by(email: params[:email])
    #     if @user && @user.authenticate(params[:user][:password])
    #         session[:user_id] = @user.id
    #         redirect_to root_path
    #     else
    #         redirect_to '/signin'
    #     end
    # end

    # def signout
    #     session.delete(:user_id)
    #     redirect_to root_path
    # end

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
