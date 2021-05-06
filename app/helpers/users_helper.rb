module UsersHelper
    def user_params #Extract the name of the user from the form
        params.require(:user).permit(:name)
    end

    session[:current_user] = User.find(id)
    session[:current_user]
end
