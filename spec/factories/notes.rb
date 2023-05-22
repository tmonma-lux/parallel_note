# frozen_string_literal: true

FactoryBot.define do
  factory :note do
    title { 'メモ１' }
    text_en { 'There are apples on that tree.' }
    text_ja { 'あの木にはりんごがなっています。' }
    free_text { 'テスト用' }
  end
end
