class TutosController < ApplicationController
  before_action :set_tuto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:new, :edit, :destroy]


  def index
    @tutos = Tuto.all
  end

  def show
    @elements = Element.where(tuto_id: @tutorial)
    @chapters = Element.where(style: Style.find_by(name: "Chapter"), tuto_id: @tutorial)
    @language_tables = LanguageTable.where(tuto: @tutorial)

    prepare_meta_tags(
      title: @tutorial.title,
      description: Element.where(tuto: @tutorial, style: Style.find_by(name:"Text")).first.text,
      keywords: @tutorial.tags,
      #image: @product.picture.url(:large),
      #twitter: {card: "summary_large_image"}
    )

  end

  def new
    @tutorial = Tuto.new
    @languages = Language.all
    
  end

  def edit

  end

  def create
    @tutorial = Tuto.new(tuto_params)
    @tutorial.user = User.first

    #binding.pry
    
    respond_to do |format|
      if @tutorial.save
        array_languages = params[:tuto][:language_ids][1..-1]
        array_languages.each do |index|
          LanguageTable.create(tuto_id: @tutorial.id, language_id: index)
        end
        format.html { redirect_to @tutorial, notice: 'Tuto was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @tutorial.update(tuto_params)
        format.html { redirect_to @tutorial, notice: 'Tuto was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tutorial.destroy
    respond_to do |format|
      format.html { redirect_to statics_path, notice: 'Tuto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


def add_text
  #@tutorial = Tuto.new

  #@tutorial.elements.build
  
  respond_to do |format|
    format.html  { render :new }
    format.js
  end

end

def add_code

end

def add_image

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuto
      @tutorial = Tuto.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuto_params
      #params.fetch(:tuto, {})
      params.require(:tuto).permit(:title, :language_ids, :elements_attributes => [:id, :text, :code, :image, :style_id, :_destroy, :language_code, :language_text])
      #params.require(:tuto).permit(:title, :elements_attributes => Element.attribut_names.map(&:to_sym).push(:_destroy))

    end
end
