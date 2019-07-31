class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :landing

  def landing
    @products = Product.all
  end
end
