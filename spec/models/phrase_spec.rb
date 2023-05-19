require 'rails_helper'

RSpec.describe Phrase, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      let(:phrase_filled) { FactoryBot.create(:phrase) }

      it 'バリデーションを通過' do
        expect(phrase_filled).to be_valid
      end
    end
  end
end
