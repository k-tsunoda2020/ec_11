class ArticlesController < ApplicationController
  def index
      @articles = Article.all
  end
  
  def new
      @article = Article.new
  end
  
  def confirm
    @article = Article.new(article_params)
    if !@article.valid?
      render :new
    end
  end
  
  def create
    @article = Article.new(article_params)
    if params[:back].present?
      render :new
    elsif @article.save
      redirect_to articles_path, notice: "登録が完了しました。"
    else
      render :new
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
  
end
