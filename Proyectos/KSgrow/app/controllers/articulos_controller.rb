class ArticulosController < ApplicationController
  def index
    #puedo accedet desde la vista
    @articulos = Articulo.all
  end
  def show
    @articles = Articulo.find(params[:id])
  end
end
