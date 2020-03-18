class StaticsController < ApplicationController
  before_action :set_static, only: [:show, :edit, :update, :destroy]

  def index
    @tutos = Tuto.all
    prepare_meta_tags title: "Code Tutorial - All tutorials about web programming", description: "Find all tutorials about web programming - Ruby on Rails, Javascript, Python"

  end

end
