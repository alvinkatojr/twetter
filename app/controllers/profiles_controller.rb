class ProfilesController < ApplicationController
  def show
    @user = User.find_by_username(params[:username])
  end


  private

  def twet_params
      params.require(:twet).permit(:content)
  end
end


