

class HighlightTypesController < ApplicationController
  authorize_resource
  before_action :set_highlight_type, only: [:show, :edit, :update, :destroy]
  # GET /highlight_types
  def index
    @q = HighlightType.ransack(params[:q])
    @highlight_types = @q.result.page(params[:page])
  end
  # GET /highlight_types/1
  def show
  end

  # GET /highlight_types/new
  def new
    @highlight_type = HighlightType.new
  end

  # GET /highlight_types/1/edit
  def edit
  end

  # POST /highlight_types
  def create
    @highlight_type = HighlightType.new(highlight_type_params)

    if @highlight_type.save
      redirect_to @highlight_type, notice: 'Highlight type was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /highlight_types/1
  def update
    if @highlight_type.update(highlight_type_params)
      redirect_to @highlight_type, notice: 'Highlight type was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /highlight_types/1
  def destroy
    @highlight_type.destroy
    redirect_to highlight_types_url, notice: 'Highlight type was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_highlight_type
      @highlight_type = HighlightType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def highlight_type_params

      params.require(:highlight_type).permit(:name, :icon)

    end
end
