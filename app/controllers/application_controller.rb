class ApplicationController < ActionController::Base

    def home
    end
    
    private

    def require_login
    redirect_to root_path flash[:alert] = "Please sign in to view this page." unless session.include? :user_id
    end

    

end
