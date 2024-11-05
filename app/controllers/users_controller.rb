class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  #before_action :authorize_user!, only: [:show]

  def show
    @user = current_user
    @event_admin = Event.all
  end


  private

  def authorize_user!
    if current_user.id != params[:id].to_i
      redirect_to root_path, alert: "Vous n'avez pas le droit d'accéder à cette page."
    end

  end


end
