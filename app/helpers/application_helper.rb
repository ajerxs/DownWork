module ApplicationHelper

    def current_user
        User.find_by(id: session[:user_id])
    end

    def user_type
        user = User.find_by(id: session[:user_id])
        user.type
    end

    def logged_in?
        !!session[:user_id]
    end

end
