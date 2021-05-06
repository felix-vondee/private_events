module UsersHelper
    def user_params #Extract the name of the user from the form
        params.require(:user).permit(:name)
    end

    def current_user(id)
        session[:current_user] = user.find(id)
        session[:current_user]
    end
end
