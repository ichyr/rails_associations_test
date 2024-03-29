class VmilistsController < ApplicationController
  before_action :set_vmilist, only: [:show, :edit, :update, :destroy]

  # GET /vmilists
  # GET /vmilists.json
  def index
    @vmilists = Vmilist.all
  end

  # GET /vmilists/1
  # GET /vmilists/1.json
  def show
  end

  # GET /vmilists/new
  def new
    @vmilist = Vmilist.new
  end

  # GET /vmilists/1/edit
  def edit
  end

  # POST /vmilists
  # POST /vmilists.json
  def create
    @vmilist = Vmilist.new(vmilist_params)

    respond_to do |format|
      if @vmilist.save
        format.html { redirect_to @vmilist, notice: 'Vmilist was successfully created.' }
        format.json { render :show, status: :created, location: @vmilist }
      else
        format.html { render :new }
        format.json { render json: @vmilist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vmilists/1
  # PATCH/PUT /vmilists/1.json
  def update
    respond_to do |format|
      if @vmilist.update(vmilist_params)
        format.html { redirect_to @vmilist, notice: 'Vmilist was successfully updated.' }
        format.json { render :show, status: :ok, location: @vmilist }
      else
        format.html { render :edit }
        format.json { render json: @vmilist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vmilists/1
  # DELETE /vmilists/1.json
  def destroy
    @vmilist.destroy
    respond_to do |format|
      format.html { redirect_to vmilists_url, notice: 'Vmilist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vmilist
      @vmilist = Vmilist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vmilist_params
      params.require(:vmilist).permit(:name)
    end
end
