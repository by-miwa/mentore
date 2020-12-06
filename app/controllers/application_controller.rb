class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_prototype, only: [:index, :search]

  def index
    @prototypes = Prototypes.all  # 全商品の情報を取得
  end

  def search
    @results = @p.result.includes(:genre)  # 検索条件にマッチした商品の情報を取得
  end
  
  def new_guest
    user = User.find_or_create_by!(email: 'yamada@com') do |user|
    user = User.find_or_create_by!(name: 'yamada') do |user|
    user = User.find_or_create_by!(profile: 'よろしくお願い致します。') do |user|
    user = User.find_or_create_by!(occupation_id: '2') do |user|
    user = User.find_or_create_by!(study_id: '2') do |user|
    user = User.find_or_create_by!(age_id: '2') do |user|
    user = User.find_or_create_by!(sns: 'あ') do |user|
    user.password = SecureRandom.urlsafe_base64
    end
    end
    end
    end
    end
    end
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストログインしました。'
  end

  private

  def search_prototype
    @p = Prototype.ransack(params[:q])  # 検索オブジェクトを生成
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation_id, :study_id, :age_id, :sns])
  end
end
