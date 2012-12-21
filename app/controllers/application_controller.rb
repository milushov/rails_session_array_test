# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter  :set_arr_to_session

private

  def set_arr_to_session
    if request.env['REQUEST_METHOD'] == 'GET'
      session[:arr] = []
    end
  end
end
