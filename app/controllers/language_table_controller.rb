class LanguageTableController < ApplicationController
 # GET /languages
  # GET /languages.json
  def index
    @languages = LanguageTable.all
  end

  # GET /languages/1
  # GET /languages/1.json
  def show
  end

  # GET /languages/new
  def new
    @languages = LanguageTable.new
  end

  # GET /languages/1/edit
  def edit
  end

  # POST /languages
  # POST /languages.json
  def create
    binding.pry
    @language = LanguageTable.new(language_params)
    @language.save
  end

  # PATCH/PUT /languages/1
  # PATCH/PUT /languages/1.json
  def update
    respond_to do |format|
      if @language.update(language_params)
        format.html { redirect_to @language, notice: 'language was successfully updated.' }
        format.json { render :show, status: :ok, location: @language }
      else
        format.html { render :edit }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.json
  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url, notice: 'language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      @language = LanguageTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def language_params
      params.fetch(:language, {})
    end
end
