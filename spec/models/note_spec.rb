require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      let(:note_filled) { FactoryBot.build(:note) }

      it 'バリデーションを通過' do
        expect(note_filled).to be_valid
      end
    end

    context 'タイトルが未入力の場合' do
      let(:note_blank_title) { FactoryBot.build(:note, title: nil) }

      it 'バリデーションエラー' do
        expect(note_blank_title).to be_invalid
      end
    end
  end
end
