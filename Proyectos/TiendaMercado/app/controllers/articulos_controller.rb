class ArticulosController < ApplicationController
  before_action :authenticate_user!,except:[:index, :show]
  before_action :set_articulo, only: [:show, :update, :destroy]
  # GET /articulos
  # GET /articulos.json
  def index
    
  @q = params[:q]
  if @q
    @articulos = Articulo.where("titulo like ?", "%#@q%")
  else
    #Articulo.all
    @articulos = Articulo.all
   end
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
    #Contador Visitas + 1
    @articulo = Articulo.where('id = ?', params[:id]).first
    @articulo.update_column('count_vts', @articulo.count_vts + 1) if @articulo.present?
    
  end

  # GET /articulos/new
  def new
    @articulo = Articulo.new
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = Articulo.new(articulo_params)
    @articulo.count_vts = -1
    respond_to do |format|
      if @articulo.save
        format.html { redirect_to @articulo, notice: 'Articulo was successfully created.' }
        format.json { render :show, status: :created, location: @articulo }
      else
        format.html { render :new }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulos/1
  # PATCH/PUT /articulos/1.json
  def update
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url, notice: 'Articulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulo_params
      params.require(:articulo).permit(:titulo, :cuerpo, :link_mercado, :count_vts, :image)
    end
end
