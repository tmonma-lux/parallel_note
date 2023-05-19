require 'rails_helper'

RSpec.describe Phrase, type: :model do
  describe 'バリデーション' do
    let(:phrase_filled) { FactoryBot.build(:phrase) }
    let(:phrase_blank_en) { FactoryBot.build(:phrase, expression_en: nil) }

    context '正常な場合' do
      it 'バリデーションを通過' do
        expect(phrase_filled).to be_valid
      end
    end

    context '英語部分が未入力の場合' do
      it 'バリデーションエラー' do
        expect(phrase_blank_en).to be_invalid
      end
    end
  end
end
