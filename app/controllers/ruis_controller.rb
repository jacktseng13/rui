class RuisController < ApplicationController
  before_action :set_rui, only: [:show, :edit, :update, :destroy]

  # GET /ruis
  # GET /ruis.json
  def index
    @ruis = Rui.all
  end

  # GET /ruis/1
  # GET /ruis/1.json
  def show
  end

  # GET /ruis/new
  def new
    @rui = Rui.new
  end

  # GET /ruis/1/edit
  def edit
  end

  # POST /ruis
  # POST /ruis.json
  def create
    @rui = Rui.new(rui_params)

    respond_to do |format|
      if @rui.save
        format.html { redirect_to @rui, notice: 'Rui was successfully created.' }
        format.json { render :show, status: :created, location: @rui }
      else
        format.html { render :new }
        format.json { render json: @rui.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruis/1
  # PATCH/PUT /ruis/1.json
  def update
    respond_to do |format|
      if @rui.update(rui_params)
        format.html { redirect_to @rui, notice: 'Rui was successfully updated.' }
        format.json { render :show, status: :ok, location: @rui }
      else
        format.html { render :edit }
        format.json { render json: @rui.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruis/1
  # DELETE /ruis/1.json
  def destroy
    @rui.destroy
    respond_to do |format|
      format.html { redirect_to ruis_url, notice: 'Rui was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rui
      @rui = Rui.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rui_params
      params.require(:rui).permit(:knowledge, :time)
    end
end
