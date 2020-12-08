class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to root_path  
    else
    render :edit
    end
  end
  
  def contributor_confirmation
    redirect_to root_path unless current_user == @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile, :occupation_id, :study_id, :age_id, :sns).merge(user_id: current_user.id)
  end
end