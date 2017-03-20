class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find_by(id: params[:id])
    @twits = @user.twits.order(created_at: :desc)
  end

end
