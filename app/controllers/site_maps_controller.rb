class SiteMapsController < ApplicationController
  #skip_before_action :authenticate_user!

  def index
    @host = "#{request.protocol}#{request.host}"
    @tutos = Tuto.all
  end
end
