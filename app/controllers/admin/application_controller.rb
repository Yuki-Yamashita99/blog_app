class Admin::ApplicationController < ApplicationController
    # Only if authenticated, allow access to actions
    before_action :authenticate_admin!
end
