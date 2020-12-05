class UsersController < ApplicationController
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

  private
  def user_params
    params.require(:user).permit(:name, :profile, :occupation_id, :study_id, :age_id, :sns).merge(user_id: current_user.id)
  end
end