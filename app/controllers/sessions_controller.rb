class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def authcreate
        @user = User.find_or_create_by(email: auth['info']['email']) do |u|
            u.first_name = auth['info']['name'].split(" ").first
            u.last_name = auth['info']['name'].split(" ").last
            u.password = auth['credentials']['token'][0,72]
            u.bio = "(create a bio)"
            u.type = "Worker"
        end
        session[:user_id] = @user.id
        redirect_to root_path
      end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end