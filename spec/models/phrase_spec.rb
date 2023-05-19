require 'rails_helper'

RSpec.describe Phrase, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      it 'バリデーションを通過' do
        note = Note.new(title: 'テスト')
        phrase = Phrase.new(note: note, expression_en: 'Test', expression_ja: 'テスト')
        expect(phrase).to be_valid
      end
    end
  end
end
