class PagesController < ApplicationController
  def index
    redirect_to(characters_path) if logged_in?
    redirect_to(login_path) unless logged_in?
  end
end
