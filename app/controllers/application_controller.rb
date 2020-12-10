class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def new_guest
    user = User.find_or_create_by!(email: 'guest@test2.com') do |user|
      user.password = "test12345"
      user.name = 'guest'
      user.profile = 'よろしくお願い致します'
      user.occupation_id = '2'
      user.study_id = '2'
      user.age_id = '2'
      user.sns = 'https://twitter.com/by_miwa30'
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストログインしました。'
  end
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation_id, :study_id, :age_id, :sns])
  end
end
