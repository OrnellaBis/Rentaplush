class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home

  def home
    @plushes = Plush.first(4)
  end
end
