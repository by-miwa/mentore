require 'rails_helper'
RSpec.describe Prototype, type: :model do
  before do
    @prototype = FactoryBot.build(:prototype)
  end

  context '新規登録がうまくいかないとき' do
    # nul:false, presence: true のテスト ▼

    it 'titleが空では登録できない' do
      @prototype.title = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('アプリの名称を入力してください')
    end

    it 'textが空では登録できない' do
      @prototype.text = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('紹介文を入力してください')
    end

    it 'conceptが空だと登録できない' do
      @prototype.concept = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('コンセプトを入力してください')
    end

    it 'appliが空では登録できない' do
      @prototype.appli = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('アプリのURLを入力してください')
    end

    it 'githubが空では登録できない' do
      @prototype.github = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('GitHubを入力してください')
    end

    it 'genre_idが空では登録できない' do
      @prototype.genre_id = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('ジャンルは数値で入力してください')
    end

    it '画像を1枚つけないと投稿できない' do
      @prototype.image = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('画像を入力してください')
    end

    # id = 1では保存できない制限のテスト ▼

    it 'ジャンルの情報がidが1だと投稿できない' do
      @prototype.genre_id = 1
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('ジャンルは1以外の値にしてください')
    end
  end
end
