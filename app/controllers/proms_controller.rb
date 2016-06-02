class PromsController < ApplicationController
  before_action :set_prom, only: [:show, :edit, :update, :destroy]

  # GET /proms
  # GET /proms.json
  def index
      @user = current_user
      @proms = Prom.all
  end

  # GET /proms/1
  # GET /proms/1.json
  def show
  end

  # GET /proms/new
  def new
    @prom = Prom.new
  end

  # GET /proms/1/edit
  def edit
  end

  # POST /proms
  # POST /proms.json
  def create
    @prom = Prom.new(prom_params)

    respond_to do |format|
      if @prom.save
        format.html { redirect_to @prom, notice: 'Promoción creada con éxito' }
        format.json { render :show, status: :created, location: @prom }
      else
        format.html { render :new }
        format.json { render json: @prom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proms/1
  # PATCH/PUT /proms/1.json
  def update
    respond_to do |format|
      if @prom.update(prom_params)
        format.html { redirect_to @prom, notice: 'Promoción modificada con éxito' }
        format.json { render :show, status: :ok, location: @prom }
      else
        format.html { render :edit }
        format.json { render json: @prom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proms/1
  # DELETE /proms/1.json
  def destroy
    @prom.destroy
    respond_to do |format|
      format.html { redirect_to proms_url, notice: 'Promoción eliminada con éxito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prom
      @prom = Prom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prom_params
      params.require(:prom).permit(:name, :price, :image, :description, :stock, :prod_1, :prod_2, :prod_3, :prod_4, :cant_1, :cant_2, :cant_3, :cant_4, :date_start, :date_end, :valido, :url, :string_otro, :int_otro)
    end
end
