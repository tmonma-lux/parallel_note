# frozen_string_literal: true

class ApplicationController < ActionController::Base
  unless Rails.env.development?
    rescue_from ActiveRecord::RecordNotFound, with: :redirect_on_404
    rescue_from ActionController::RoutingError, with: :redirect_on_404
    rescue_from Exception, with: :redirect_on_500
  end

  def redirect_on_404
    redirect_to root_url, alert: 'ページが見つかりませんでした。'
  end

  def redirect_on_500
    redirect_to root_url, alert: 'サーバーでエラーが発生しました。'
  end
end
