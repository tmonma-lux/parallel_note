# frozen_string_literal: true

class ApplicationController < ActionController::Base
  unless Rails.env.development?
    rescue_from ActiveRecord::RecordNotFound, with: :redirect_on_404err
    rescue_from ActionController::RoutingError, with: :redirect_on_404err
    rescue_from Exception, with: :redirect_on_500err
  end

  def redirect_on_404err
    redirect_to root_url, alert: 'ページが見つかりませんでした。'
  end

  def redirect_on_500err
    redirect_to root_url, alert: 'サーバーでエラーが発生しました。'
  end
end
