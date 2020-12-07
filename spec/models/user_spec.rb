require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  context '新規登録がうまくいかないとき' do
    # nul:false, presence: true のテスト ▼

    it 'emailが空では登録できない' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Eメールを入力してください")
    end

    it 'passwordが空では登録できない' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードを入力してください")
    end

    it 'nameが空だと登録できない' do
      @user.name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("ユーザー名を入力してください")
    end

    it 'profileが空では登録できない' do
      @user.profile = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("プロフィールを入力してください")
    end

    it 'occupation_idが空では登録できない' do
      @user.occupation_id = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("前職を入力してください")
    end

    it 'study_idが空では登録できない' do
      @user.study_id = nil
      @user.valid?
      expect(@user.errors.full_messages).to include( "学習進捗を入力してください")
    end

    it 'age_idが空では登録できない' do
      @user.age_id = nil
      @user.valid?
      expect(@user.errors.full_messages).to include('年齢を入力してください')
    end

    it 'snsが空では登録できない' do
      @user.sns = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Twitterを入力してください")
    end

    # id = 1では保存できない制限のテスト ▼

    it '前職の情報がidが1だと投稿できない' do
      @user.occupation_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include('前職は1以外の値にしてください')
    end

    it '学習進捗についての情報がidが1だと投稿できない' do
      @user.study_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include('学習進捗は1以外の値にしてください')
    end

    it '年齢についての情報がidが1だと投稿できない' do
      @user.age_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include('年齢は1以外の値にしてください')
    end
  end
end