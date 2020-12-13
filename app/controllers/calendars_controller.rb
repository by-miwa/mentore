class CalendarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  # １週間のカレンダーと予定が表示されるページ
  def index
    get_week
    @plan = Plan.new
    @users = User.all
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan)
  end

  def get_week
    wdays = ['(日)', '(月)', '(火)', '(水)', '(木)', '(金)', '(土)']

    # Dateオブジェクトは、日付を保持しています。下記のように`.today.day`とすると、今日の日付を取得できます。
    @todays_date = Date.today
    # 例)　今日が2月1日の場合・・・ Date.today.day => 1日

    @week_days = []

    plans = Plan.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_plans = []
      plan = plans.map do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end
      days = { month: (@todays_date + x).month, date: (@todays_date + x).day, plans: today_plans, wday: wdays[(@todays_date + x).wday] }
      @week_days.push(days)
    end

    def contributor_confirmation
      redirect_to root_path unless current_user == @user
    end
  end
end
