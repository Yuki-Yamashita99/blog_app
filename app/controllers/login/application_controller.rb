class Login::ApplicationController < ApplicationController
    # Only if authenticated, allow access to actions
    before_action :authenticate_user!
end
