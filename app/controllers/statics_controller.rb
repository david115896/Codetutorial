class StaticsController < ApplicationController
  before_action :set_static, only: [:show, :edit, :update, :destroy]

  def index
    @tutos = Tuto.all
  end

end
