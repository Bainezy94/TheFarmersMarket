class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    before_action :set_user_type

    def set_user_type   
        @user_type = params[:user_type]
    end


    # before_action :authenticate_user!
    def after_sign_in_path_for(profile)

        if (current_user.profile)
            root_path
        else
            # pass the user type to the profile controller to decide the redirection path for the seller and buyer
            new_profile_path(user_type: params[:user][:user_type]) || root_path
        end
    end
end
