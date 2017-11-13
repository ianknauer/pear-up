Doorkeeper.configure do
  # Change the ORM that doorkeeper will use (needs plugins)
  orm :active_record

  # This block will be called to check whether the resource owner is authenticated or not.
  resource_owner_from_credentials do
    current_user ||= begin
      user = User.find_by(username: params[:username])
      user && user.authenticate(params[:password])
    end
  end
end

Doorkeeper.configuration.token_grant_types << "password"
