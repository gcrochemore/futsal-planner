class FutsalFieldsController < ApplicationController
  authorize_resource
  before_action :set_futsal_field, only: [:show, :edit, :update, :destroy]
  # GET /futsal_fields
  def index
    @q = FutsalField.ransack(params[:q])
    @futsal_fields = @q.result.page(params[:page])
  end
  # GET /futsal_fields/1
  def show
  end

  # GET /futsal_fields/new
  def new
    @futsal_field = FutsalField.new
  end

  # GET /futsal_fields/1/edit
  def edit
  end

  # POST /futsal_fields
  def create
    @futsal_field = FutsalField.new(futsal_field_params)

    if @futsal_field.save
      redirect_to @futsal_field, notice: 'Futsal field was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_fields/1
  def update
    if @futsal_field.update(futsal_field_params)
      redirect_to @futsal_field, notice: 'Futsal field was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_fields/1
  def destroy
    @futsal_field.destroy
    redirect_to futsal_fields_url, notice: 'Futsal field was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_field
      @futsal_field = FutsalField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_field_params

      params.require(:futsal_field).permit(:name, :latitude, :longitude)

    end
end
