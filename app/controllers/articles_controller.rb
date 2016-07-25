class ArticlesController < ApplicationController
  expose :article

  def create
    if article.save
      flash[:success] = 'Article has been created.'
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong."
      render :new
    end
  end

  def update
    if article.update(article_params)
      flash[:success] = 'Article has been updated.'
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong."
      render :new
    end
  end

  def destroy
    article.destroy
    flash[:success] = 'Article has been deleted.'
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
