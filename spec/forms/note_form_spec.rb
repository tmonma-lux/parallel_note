# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'バリデーション' do
    context '正常な場合' do
      let(:form_filled) { FactoryBot.build(:note_form) }

      it 'バリデーションを通過' do
        expect(form_filled).to be_valid
      end
    end

    context 'タイトルが未入力の場合' do
      let(:form_blank_title) { FactoryBot.build(:note_form, title: nil) }

      it 'バリデーションエラー' do
        expect(form_blank_title).to be_invalid
      end
    end

    context '語句が英語部分のみ未入力の場合' do
      let(:form_blank_expression_en) { FactoryBot.build(:note_form, phrases: [{expression_en: '', expression_ja: '語句1'}]) }

      it 'バリデーションエラー' do
        expect(form_blank_expression_en).to be_invalid
      end
    end

    context '語句が日本語部分のみ未入力の場合' do
      let(:form_blank_expression_ja) { FactoryBot.build(:note_form, phrases: [{expression_en: 'Phrase1', expression_ja: ''}]) }

      it 'バリデーションエラー' do
        expect(form_blank_expression_ja).to be_invalid
      end
    end
  end
end
