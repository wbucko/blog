class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :destroy]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article has been created.'
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong."
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      binding.pry
      flash[:success] = 'Article has been updated.'
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong."
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:success] = 'Article has been deleted.'
    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
