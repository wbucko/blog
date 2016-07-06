class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :destroy]

  def new
    @aricle = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:success] = 'Article has been created.'
      redirect_to @article
    else
      flash[:danger] = "Something went wrong."
      render :new
    end
  end

  def edit
    @article = Article.find(:id)
  end

  def update
    @article = Article.find(:id)
    if @article.update(article_params)
      flash[:success] = 'Article has been updated.'
      redirect_to @article
    else
      flash[:danger] = "Something went wrong."
      render :new
    end
  end

  def destroy
    @article.destroy
    flash[:success] = 'Article has been deleted.'
    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(:id)
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
