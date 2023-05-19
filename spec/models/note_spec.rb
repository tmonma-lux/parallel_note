require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      let(:note_filled) { FactoryBot.create(:note) }

      it 'バリデーションを通過' do
        expect(note_filled).to be_valid
      end
    end
  end
end
