class ElementsController < ApplicationController
    before_action :set_tuto, only: [:new, :destroy]

  def new
  end

  # GET /elements/1/edit
  def edit
  end

  def create
    #binding.pry

    @element = Element.new(element_params)
    @element.style = Style.find_by(name: "Text")

    @element.save
   
  end

  def update
    respond_to do |format|
      if @element.update(element_params)
        format.html { redirect_to @element, notice: 'element was successfully updated.' }
        format.json { render :show, status: :ok, location: @element }
      else
        format.html { render :edit }
        format.json { render json: @element.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @element.destroy
    respond_to do |format|
      format.html { redirect_to elements_url, notice: 'element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element
      @element = Element.find(params[:id])
    end

    def set_tuto
        @tutorial = Tuto.find(params[:tuto_id])
    end

    # Only allow a list of trusted parameters through.
    def element_params
      params.fetch(:element, {})
    end
end
