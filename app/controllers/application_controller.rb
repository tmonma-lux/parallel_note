# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_on_404
  rescue_from ActionController::RoutingError, with: :redirect_on_404
  rescue_from Exception, with: :redirect_on_500

  def redirect_on_404
    redirect_to notes_url, alert: 'ページが見つかりませんでした。'
  end

  def redirect_on_500
    redirect_to notes_url, alert: 'サーバーでエラーが発生しました。'
  end
end
