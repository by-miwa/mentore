require 'rails_helper'
RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end

  context '新規登録がうまくいかないとき' do
    # nul:false, presence: true のテスト ▼

    it 'titleが空では登録できない' do
      @book.title = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("本のタイトルを入力してください")
    end

    it 'reedが空では登録できない' do
      @book.reed = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("ジャンルを入力してください")
    end

    it 'understandが空だと登録できない' do
      @book.understand = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("学んだ単語を入力してください")
    end

    it 'textが空では登録できない' do
      @book.text = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("本の感想を入力してください")
    end

    it 'actionが空では登録できない' do
      @book.action = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("行動プランを入力してください")
    end

    it 'linkが空では登録できない' do
      @book.link = nil
      @book.valid?
      expect(@book.errors.full_messages).to include( "本のURLを入力してください")
    end

    it '画像を1枚つけないと投稿できない' do
      @book.image = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("画像を入力してください")
    end
  end
end