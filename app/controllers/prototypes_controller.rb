class PrototypesController < ApplicationController
  before_action :set_prototype, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  before_action :search_prototype, only: [:new, :index, :search]

  def index
    @prototypes = Prototype.all
    @books = Book.all
  end

  def search
    @results = @p.result # 検索条件にマッチした商品の情報を取得
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.create(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
    before_action :search_prototype, only: [:index, :search]
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
    redirect_to prototype_path  
    else
    render :edit
    end
  end

  def destroy
    @prototype = Prototype.find(params[:id])
    if @prototype.destroy
    redirect_to root_path
    end
  end

  private

  def search_prototype
    @p = Prototype.ransack(params[:q])  # 検索オブジェクトを生成
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :text, :concept, :appli, :github, :genre_id, :image).merge(user_id: current_user.id)
  end

  def set_prototype
    #@prototype = Prototype.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @prototype.user
  end
end