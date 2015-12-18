class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_years
  private
  def set_years
    @years = Idea.pluck(:created_at).map{|created_at| created_at.year }.uniq
  end

end
