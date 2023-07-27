class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  # def destroy
  #   sign_out(current_user)
  #   redirect_to root_path, notice: "You have been signed out successfully."
  # end
end
