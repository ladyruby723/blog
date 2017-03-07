class AdminAuthorization < ActiveAdmin::AuthorizationAdapter
    def authorized?(action, subject = nil)
        contributor && contributor.admin?
    end
end
