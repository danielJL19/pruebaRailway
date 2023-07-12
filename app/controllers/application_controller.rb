class ApplicationController < ActionController::Base

    def after_sign_in_path_for(user)
        if user.admin 
            return admin_index_path
        else 
            return dashboard_index_path
        end
    end
end
