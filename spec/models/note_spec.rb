require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      it 'バリデーションを通過' do
        note = Note.new(title: 'テスト')
        expect(note).to be_valid
      end
    end
  end
end
