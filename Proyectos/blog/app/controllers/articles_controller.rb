class ArticlesController < ApplicationController
  #GET /articles
  def index
    #puedo accedet desde la vista
    @articles = Article.all
  end
  #GET /articles/:id
  def show
    @articles = Article.find(params[:id])
  end
  #GET /articles/new # articulos nuevos
  def new
    @articles = Article.new
  end
  #POST /articles
 
=begin Primera forma
  def create
    @articles = Article.new(title: params[:article][:title],
                            body: params[:article][:body])
    if @articles.save
      redirect_to @articles;
    else
      render :new
    end
  end
=end  
  def create
    @articles = Article.new(articles_param)
    if @articles.save
      redirect_to @articles;
    else
      render :new
    end
  end
  def edit
    @articles = Article.find(params[:id])
  end
  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path
  end
  def update
    @articles = Article.find(params[:id])
    if @articles.update_attributes(articles_param)
      redirect_to @articles
    else
      render :edit
    end                           
  end
  
  private
  def articles_param
    params.require(:article).permit(:title,:body)
  end
end