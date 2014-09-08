class InstruktorsController < ApplicationController
  before_action :set_instruktor, only: [:show, :edit, :update, :destroy]

  # GET /instruktors
  # GET /instruktors.json
  def index
    @instruktors = Instruktor.all
  end

  # GET /instruktors/1
  # GET /instruktors/1.json
  def show
  end

  # GET /instruktors/new
  def new
    @instruktor = Instruktor.new
  end

  # GET /instruktors/1/edit
  def edit
  end

  # POST /instruktors
  # POST /instruktors.json
  def create
    @instruktor = Instruktor.new(instruktor_params)

    respond_to do |format|
      if @instruktor.save
        format.html { redirect_to @instruktor, notice: 'Instruktor was successfully created.' }
        format.json { render :show, status: :created, location: @instruktor }
      else
        format.html { render :new }
        format.json { render json: @instruktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruktors/1
  # PATCH/PUT /instruktors/1.json
  def update
    respond_to do |format|
      if @instruktor.update(instruktor_params)
        format.html { redirect_to @instruktor, notice: 'Instruktor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instruktor }
      else
        format.html { render :edit }
        format.json { render json: @instruktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruktors/1
  # DELETE /instruktors/1.json
  def destroy
    @instruktor.destroy
    respond_to do |format|
      format.html { redirect_to instruktors_url, notice: 'Instruktor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruktor
      @instruktor = Instruktor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instruktor_params
      params.require(:instruktor).permit(:name)
    end
end
