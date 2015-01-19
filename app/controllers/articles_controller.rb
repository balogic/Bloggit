class ArticlesController < ApplicationController
	
	def index
		@article=Article.all
	end
  def new
  	@article=Article.new
  end

  def create
  	@article = Article.new(params.require(:article).permit(:title,:text))
 
  if @article.save
  redirect_to @article
else
	render 'new'
end
  end

  def update
  @article = Article.find(params[:id])
 
  if @article.update(params.require(:article).permit(:title,:text))
    redirect_to @article
  else
    render 'edit'
  end
end

  def edit
  @article = Article.find(params[:id])
end

  def show
  	@article=Article.find(params[:id])
end
def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
end