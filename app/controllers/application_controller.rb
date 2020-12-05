class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_prototype, only: [:index, :search]

  def index
    @prototypes = Prototypes.all  # 全商品の情報を取得
  end

  def search
    @results = @p.result.includes(:genre)  # 検索条件にマッチした商品の情報を取得
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
