# frozen_string_literal: true

FactoryBot.define do
  factory :note_form do
    title { 'メモ1' }
    text_en { 'There are apples on that tree.' }
    text_ja { 'あの木にはりんごがなっています。' }
    free_text { 'テスト用' }
    phrases { [{ expression_en: 'Phrase1', expression_ja: '語句1' }] }
    tag_list {}
  end
end
