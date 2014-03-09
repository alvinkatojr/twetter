class ProfilesController < ApplicationController
  def show
    if params[:username]
      @user = User.where(:username => params[username]).first
      @twets = Twet.by_user_ids(@user.id) if @user
    else
      @twets = current_user.all_twets
    end
  end


  private

  def twet_params
      params.require(:twet).permit(:content)
  end
end


