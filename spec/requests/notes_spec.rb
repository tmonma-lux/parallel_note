# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/notes/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/notes/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/notes/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/notes/edit'
      expect(response).to have_http_status(:success)
    end
  end
end
